CREATE OR REPLACE FUNCTION DeleteCandidateByID(candidate_id INT)
RETURNS Text AS $$
DECLARE
	OutText Text;
	c_count int:=0;
BEGIN
	select count(*) into c_count from candidates where candidateid = candidate_id;
	if c_count <> 0 then
    DELETE FROM Candidates WHERE CandidateID = candidate_id;
	OutText:= 'Candidate deleted successfully.';
    Return OutText;
	else 
		OutText:= 'Candidate can not deleted successfully.';
    	Return OutText;
	END IF;																					
END;
$$ LANGUAGE plpgsql;
-- calling function for delete
select DeleteCandidateByID(46);

