CREATE OR REPLACE Function hirecandidate(
     num INT, -- Number of candidates to select and delete
	 candidate_type VARCHAR(20) -- Sorting criteria: experience, skills, edu/education
    
)
Returns text
AS $$
BEGIN
	if candidate_type='experience' then 
		insert into selected_candidates select * from candidates order by experience desc limit num;
		return 'successfully Hired';
	elsif candidate_type='skills' then
		insert into selected_candidates select * from candidates order by skills limit num;
		return 'successfully Hired';
	elsif candidate_type in ('edu','education') then
	
		insert into selected_candidates select * from candidates order by education limit num;
		return 'successfully Hired';
	else 
		
-- 		Raise Notice 'Enter Invalid candidates count or sorting type...!!  ';
-- 		Raise Notice 'there are 3 soritng types experience,skills, and education';
		return 'Invalid Input, there are 3 soritng types experience,skills, and education';
	end if;
 -- now, deleting those candidates from applied candidate list
 
 delete from candidates where candidateid IN(select candidateid from selected_candidates);
Raise Notice 'Hiered candidate : %  | Candidate based on sorting : %',num,candidate_type;
 END;
$$ LANGUAGE plpgsql;


-- call this function
select hirecandidate(3, 'experience');

--invalid sort type
select hirecandidate(1, 'xyz');

-- check hired candidate
select * from selected_candidates;