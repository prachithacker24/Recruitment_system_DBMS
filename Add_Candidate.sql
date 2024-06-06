CREATE OR REPLACE  PROCEDURE addcandidate(
	iname IN varchar(50),
	icontactdetails IN varchar(200),
	iresume IN text,
	iskills IN varchar(200),
	iexperience IN text,
	ieducation IN text
)AS $$
DECLARE
	candidateCount INT;
BEGIN
   

    -- Check if the candidate already exists based on Name and ContactDetails
    SELECT COUNT(*) INTO candidateCount
    FROM Candidates
    WHERE name = iName AND ContactDetails = iContactDetails;

    IF candidateCount = 0 THEN
        -- If the candidate does not exist, insert the new candidate
        INSERT INTO Candidates (Name, ContactDetails, Resume, Skills, Experience, Education)
        VALUES (iName, iContactDetails, iResume, iSkills, iExperience, iEducation);
        RAISE NOTICE 'Candidate added successfully.' ;
    ELSE
        -- If the candidate already exists, raise an error notice
        Raise NOTICE 'Candidate data is invalid or repeated..!!';
    END IF;
END;
$$ language plpgsql;


-- call this procedure

CALL addcandidate('Mohan Singh','mohn.doe@example.com, 1234567890','Resume content for Mohan',
    'Java, Python, SQL','3 years as Software Engineer','Bachelor of Computer Science');