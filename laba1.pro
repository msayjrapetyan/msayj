patient(ivanov, 25).
patient(petrov, 35).
patient(sidorenko, 42).
patient(smirnova, 28).

doctor(ivanova, therapeutist).
doctor(petrova, neurologist).
doctor(sidorenko, cardiologist).
doctor(smirnov, ophthalmologist).

appointment(ivanov, ivanova, '01.01.2022', 'headache').
appointment(petrov, petrova, '02.01.2022', 'migraine').
appointment(sidorenko, sidorenko, '03.01.2022', 'heart disease').
appointment(smirnova, smirnov, '01.01.2022', 'vision check').



% Каких врачей прошёл пациент за указанный день?
visited_doctors(Patient, Date, Doctors) :-
    findall(Doctor, appointment(Patient, Doctor, Date, _), Doctors).

% Диагнозы пациента за все время
patient_diagnoses(Patient, Diagnoses) :-
    findall(Diagnosis, appointment(Patient, _, _, Diagnosis), Diagnoses).

% Какие пациенты посетили врача за указанный день
visited_patients(Doctor, Date, Patients) :-
    findall(Patient, appointment(Patient, Doctor, Date, _), Patients).



