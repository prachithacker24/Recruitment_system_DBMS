-- creating trigger for taking back up of deleted candidate
CREATE OR REPLACE FUNCTION after_candidate_delete()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO deleted_candidate
    VALUES (OLD.*);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- set TRigger on candidate table 
CREATE TRIGGER candidate_delete_trigger
AFTER DELETE ON candidates
FOR EACH ROW
EXECUTE FUNCTION after_candidate_delete();


-- creating pl_sql block for delete candidate in specified Range
DO $$
DECLARE
	startRange int:=18;
	endRange int:=20;
    candidate_id INT;
BEGIN
    FOR candidate_id IN startRange..endRange LOOP
        DELETE FROM Candidates WHERE CandidateID = candidate_id;
        RAISE NOTICE 'Candidate with ID % deleted successfully.', candidate_id;
    END LOOP;
END;
$$

-- example
delete from candidates where candidateid=65;

-- candidate table 
select * from candidates;

-- backup table
select * from deleted_candidate;