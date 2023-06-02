--1
--calculate the average volume of blood samples donated by donors
DECLARE
  total_volume NUMBER := 0;
  sample_count NUMBER := 0;
  average_volume NUMBER := 0;
BEGIN
  FOR sample_rec IN (SELECT volume FROM BloodSamples)
  LOOP
    total_volume := total_volume + sample_rec.volume;
    sample_count := sample_count + 1;
  END LOOP;
  
  IF sample_count > 0 THEN
    average_volume := total_volume / sample_count;
    DBMS_OUTPUT.PUT_LINE('Average Volume: ' || average_volume);
  ELSE
    DBMS_OUTPUT.PUT_LINE('No samples found.');
  END IF;
END;
/

--2
--insert a new donor and corresponding blood sample record
DECLARE
  new_donor_id NUMBER := 1001;
  new_donor_name VARCHAR2(50) := 'John Doe';
  new_blood_type VARCHAR2(5) := 'A+';
  new_sample_id NUMBER := 2001;
  new_collection_date VARCHAR2(25) := '2023-05-01';
  new_volume NUMBER := 250;
BEGIN
  -- Insert into Donors table
  INSERT INTO Donors (donor_id, donor_name, blood_type)
  VALUES (new_donor_id, new_donor_name, new_blood_type);
  
  -- Insert into BloodSamples table
  INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume)
  VALUES (new_sample_id, new_donor_id, new_collection_date, new_volume);
  
  DBMS_OUTPUT.PUT_LINE('New donor and blood sample records inserted.');
END;
/


--3
--uses a cursor to fetch data from the Donors table
DECLARE
  v_donor_id Donors.donor_id%TYPE;
  v_donor_name Donors.donor_name%TYPE;
  CURSOR c_donors IS
    SELECT donor_id, donor_name FROM Donors;
BEGIN
  OPEN c_donors;
  
  LOOP
    FETCH c_donors INTO v_donor_id, v_donor_name;
    EXIT WHEN c_donors%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Donor ID: ' || v_donor_id || ', Donor Name: ' || v_donor_name);
  END LOOP;
  CLOSE c_donors;
END;
/

