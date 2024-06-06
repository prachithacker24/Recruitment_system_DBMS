-- CREATE OR REPLACE PROCEDURE SortJobPositionsByTitle()
-- LANGUAGE plpgsql
-- AS $$
-- DECLARE
-- 	i int:=0;
--     job_record JobPositions%ROWTYPE;
--     cursor_job_positions CURSOR FOR
--         SELECT * FROM JobPositions ORDER BY Title;
-- BEGIN
--     OPEN cursor_job_positions;

--     LOOP
--         FETCH cursor_job_positions INTO job_record;
--         EXIT WHEN NOT FOUND;
-- 		i:=i+1;
--         RAISE NOTICE '#%. JobID: %, Title: %, Department: %',i,job_record.JobID, job_record.Title, 
--                      job_record.Department;
-- 		RAISE NOTICE 'Description: %, RequiredSkills: %, ExperienceLevel: %, Salary: %', job_record.Description, 
--                      job_record.RequiredSkills, job_record.ExperienceLevel, 
--                      job_record.Salary;
-- 		RAISE NOTICE'';
--     END LOOP;

--     CLOSE cursor_job_positions;
-- END;
-- $$;

-- CALL SortJobPositionsByTitle();





-- CREATE OR REPLACE PROCEDURE SortJobPositionsBySalary()
-- LANGUAGE plpgsql
-- AS $$
-- DECLARE
-- 	i int:=0;
--     job_record JobPositions%ROWTYPE;
--     cursor_job_positions CURSOR FOR
--         SELECT * FROM JobPositions ORDER BY salary desc;
-- BEGIN
--     OPEN cursor_job_positions;

--     LOOP
--         FETCH cursor_job_positions INTO job_record;
--         EXIT WHEN NOT FOUND;
-- 		i:=i+1;
--         RAISE NOTICE '#%. JobID: %, Title: %, Department: %',i,job_record.JobID, job_record.Title, 
--                      job_record.Department;
-- 		RAISE NOTICE 'Description: %, RequiredSkills: %, ExperienceLevel: %, Salary: %', job_record.Description, 
--                      job_record.RequiredSkills, job_record.ExperienceLevel, 
--                      job_record.Salary;
-- 		RAISE NOTICE'';
--     END LOOP;

--     CLOSE cursor_job_positions;
-- END;
-- $$;

-- CALL SortJobPositionsBySalary();



-- CREATE OR REPLACE PROCEDURE SortJobPositionsByExperience()
-- LANGUAGE plpgsql
-- AS $$
-- DECLARE
-- 	i int:=0;
--     job_record JobPositions%ROWTYPE;
--     cursor_job_positions CURSOR FOR
--         SELECT * FROM JobPositions ORDER BY experiencelevel;
-- BEGIN
--     OPEN cursor_job_positions;

--     LOOP
--         FETCH cursor_job_positions INTO job_record;
--         EXIT WHEN NOT FOUND;
-- 		i:=i+1;
--         RAISE NOTICE '#%. JobID: %, Title: %, Department: %',i,job_record.JobID, job_record.Title, 
--                      job_record.Department;
-- 		RAISE NOTICE 'Description: %, RequiredSkills: %, ExperienceLevel: %, Salary: %', job_record.Description, 
--                      job_record.RequiredSkills, job_record.ExperienceLevel, 
--                      job_record.Salary;
-- 		RAISE NOTICE'';
--     END LOOP;

--     CLOSE cursor_job_positions;
-- END;
-- $$;

-- CALL SortJobPositionsByExperience();


-- CREATE OR REPLACE PROCEDURE SortJobPositionsByDepartment()
-- LANGUAGE plpgsql
-- AS $$
-- DECLARE
-- 	i int:=0;
--     job_record JobPositions%ROWTYPE;
--     cursor_job_positions CURSOR FOR
--         SELECT * FROM JobPositions ORDER BY department;
-- BEGIN
--     OPEN cursor_job_positions;

--     LOOP
--         FETCH cursor_job_positions INTO job_record;
--         EXIT WHEN NOT FOUND;
-- 		i:=i+1;
--         RAISE NOTICE '#%. JobID: %, Title: %, Department: %',i,job_record.JobID, job_record.Title, 
--                      job_record.Department;
-- 		RAISE NOTICE 'Description: %, RequiredSkills: %, ExperienceLevel: %, Salary: %', job_record.Description, 
--                      job_record.RequiredSkills, job_record.ExperienceLevel, 
--                      job_record.Salary;
-- 		RAISE NOTICE'';
--     END LOOP;

--     CLOSE cursor_job_positions;
-- END;
-- $$;

-- CALL SortJobPositionsByDepartment();

-- CREATE OR REPLACE PROCEDURE SortJobPositionsBySkill(requiered_skill varchar(20))
-- LANGUAGE plpgsql
-- AS $$
-- DECLARE
-- 	i int:=0;
--     job_record JobPositions%ROWTYPE;
--     cursor_job_positions CURSOR FOR
--         SELECT * FROM JobPositions where requiredskills like '%'||requiered_skill||'%' ;
-- BEGIN
--     OPEN cursor_job_positions;

--     LOOP
--         FETCH cursor_job_positions INTO job_record;
--         EXIT WHEN NOT FOUND;
-- 		i:=i+1;
--         RAISE NOTICE '#%. JobID: %, Title: %, Department: %',i,job_record.JobID, job_record.Title, 
--                      job_record.Department;
-- 		RAISE NOTICE 'Description: %, RequiredSkills: %, ExperienceLevel: %, Salary: %', job_record.Description, 
--                      job_record.RequiredSkills, job_record.ExperienceLevel, 
--                      job_record.Salary;
-- 		RAISE NOTICE'';
--     END LOOP;

--     CLOSE cursor_job_positions;
-- END;
-- $$;

-- CALL SortJobPositionsBySkill('Java');
