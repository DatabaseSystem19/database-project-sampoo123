select * from Donors;
select * from BloodSamples;
select * from Recipients;
select * from Transactions;

alter table Recipients modify recipient_name VARCHAR(20);
alter table Recipients modify hospital_name VARCHAR(20);
alter table Recipients modify doctor_name VARCHAR(20);

--Show all records row
select count(*) from Donors;
select count(*) from BloodSamples;
select count(*) from Recipients;
select count(*) from Transactions;

--Nested queries
--Retrieve the names of donors who have donated blood to recipients at a specific hospital
SELECT donor_name FROM Donors WHERE donor_id IN (
  SELECT donor_id FROM Transactions WHERE recipient_id IN (
    SELECT recipient_id FROM Recipients WHERE hospital_name = 'MNO Hospital'
  )
);
--Retrieve the names of donors who have donated the maximum volume of blood
SELECT donor_name FROM Donors WHERE donor_id IN (
  SELECT donor_id FROM BloodSamples WHERE volume = (
    SELECT MAX(volume) FROM BloodSamples
  )
);
--Retrieve the names of recipients who received blood from donors with a specific blood type
SELECT recipient_name FROM Recipients WHERE donor_id IN (
  SELECT donor_id FROM Donors WHERE blood_type = 'AB+'
);
