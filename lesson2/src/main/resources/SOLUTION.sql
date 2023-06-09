INSERT INTO Student (name, groupnumber) VALUES ('John', 1);
INSERT INTO Student (name, groupnumber) VALUES ('Chris', 1);
INSERT INTO Student (name, groupnumber) VALUES ('Carl', 1);
INSERT INTO Student (name, groupnumber) VALUES ('Oliver', 2);
INSERT INTO Student (name, groupnumber) VALUES ('James', 2);
INSERT INTO Student (name, groupnumber) VALUES ('Lucas', 2);
INSERT INTO Student (name, groupnumber) VALUES ('Henry', 2);
INSERT INTO Student (name, groupnumber) VALUES ('Jacob', 3);
INSERT INTO Student (name, groupnumber) VALUES ('Logan', 3);
INSERT INTO Student (name, groupnumber) VALUES ('Lu', 4);
INSERT INTO Student (name, groupnumber) VALUES ('Herry', 4);
INSERT INTO Student (name, groupnumber) VALUES ('Jac', 5);
INSERT INTO Student (name, groupnumber) VALUES ('Li', 5);
INSERT INTO Subject (name, grade) VALUES ('Art', 1);
INSERT INTO Subject (name, grade) VALUES ('Music', 1);
INSERT INTO Subject (name, grade) VALUES ('Geography', 2);
INSERT INTO Subject (name, grade) VALUES ('History', 2);
INSERT INTO Subject (name, grade) VALUES ('PE', 3);
INSERT INTO Subject (name, grade) VALUES ('Math', 3);
INSERT INTO Subject (name, grade) VALUES ('Science', 4);
INSERT INTO Subject (name, grade) VALUES ('IT', 4);
INSERT INTO Subject (name, grade) VALUES ('Biology', 5);
INSERT INTO Subject (name, grade) VALUES ('Communicate', 5);
INSERT INTO PaymentType (name) VALUES ('DAILY');
INSERT INTO PaymentType (name) VALUES ('WEEKLY');
INSERT INTO PaymentType (name) VALUES ('MONTHLY');
INSERT INTO payment (type_id, amount, payment_date, student_id)
            SELECT pt.id, 500.0 , CURRENT_TIMESTAMP, s.id
            FROM student s
            JOIN paymenttype pt ON pt.name = 'Weekly'
            WHERE s.name = 'John';
INSERT INTO payment (type_id, amount, payment_date, student_id)
            SELECT pt.id, 600.0 , CURRENT_TIMESTAMP, s.id
            FROM student s
            JOIN paymenttype pt ON pt.name = 'Monthly'
            WHERE s.name = 'Oliver';
INSERT INTO payment (type_id, amount, payment_date, student_id)
            SELECT pt.id, 700.0 , CURRENT_TIMESTAMP, s.id
            FROM student s
            JOIN paymenttype pt ON pt.name = 'Weekly'
            WHERE s.name = 'Henry';
INSERT INTO payment (type_id, amount, payment_date, student_id)
            SELECT pt.id, 800.0 , CURRENT_TIMESTAMP, s.id
            FROM student s
            JOIN paymenttype pt ON pt.name = 'Daily'
            WHERE s.name = 'James';

