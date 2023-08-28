INSERT INTO `Mahasiswa`
  (`Identitas`, `Nama`, `Jenis_kelamin`, `Alamat`, `Email`, `Telepon`)
VALUES
  ('4d180bfb-6f47-486d-9742-fda969e3e001', 'Mika', 'Laki-laki', 'Japan 117', 'mika@gmail.com', '081926528456'),
  ('c4cb8c93-317c-4253-9ee7-666fc9d75acb', 'Tomori', 'Perempuan', 'Japan 118', 'tomori@gmail.com', '081699128973'),
  ('29c98848-d477-4e90-a80b-99c012ea6760', 'Tomoya', 'Laki-laki', 'Japan 119', 'tomoya@gmail.com', '081009137455'),
  ('528e7aea-b5a8-4477-a911-762313979c10', 'Yagami', 'Laki-laki', 'Japan 120', 'yagami@gmail.com', '081918119882');

INSERT INTO `Dosen`
  (`Identitas`, `Nama`, `Email`, `No_hp`)
VALUES
  ('1b2085bf-2d21-4bac-8c31-ac80a9a1ed17', 'Tanjiro', 'tanjiro@gmail.com', '081562771364'),
  ('169a470a-77f1-44b5-ba68-579b48d21edf', 'Kanao', 'kanao@gmail.com', '081833770064'),
  ('c2a48b62-3ed1-4709-bd8d-9ca5dcd23453', 'Zenitsu', 'zenitsu@gmail.com', '089817171364'),
  ('5f581eb4-ff78-4e70-bf34-0b2f13a29089', 'Zenin', 'zenin@gmail.com', '081882670018');

INSERT INTO `Mata_kuliah`
  (`Identitas`, `Nama`, `Jumlah_sks`, `Tipe`, `Identitas_pengajar`, `Kapasitas`)
VALUES
  ('b82e1e0d-efd4-4249-ae10-cbc2da9c8c37', 'Web Programming', 4, 'Teori & Praktik', '75244599-581d-47d0-9c5f-4b24f8b84801', 20),
  ('a7c18046-5689-4f99-9b3b-2d48637b562f', 'Human Computer Interaction', 4, 'Teori', '96ac242c-f27b-4917-9ab4-22e1d01f70ac', 19),
  ('7a27348f-3909-400a-b656-bb2f5f9b1b53', 'Object-oriented Programming', 6, 'Teori & Praktik', '75244599-581d-47d0-9c5f-4b24f8b84801', 15),
  ('5cc46f22-dd1e-419a-9a28-0150c67783d6', 'Calculus', 2, 'Teori', '96ac242c-f27b-4917-9ab4-22e1d01f70ac', 20);

INSERT INTO `Ruang`
  (`Nomor`, `Jenis`, `Fasilitas`, `Kapasitas`)
VALUES
  (7, 'Praktik', 'Komputer', 20),
  (8, 'Teori', 'Meja', 25),
  (9, 'Praktik', 'Komputer', 20),
  (10, 'Teori', 'Meja', 20);

INSERT INTO `Perkuliahan`
  (`Identitas`, `Identitas_dosen`, `Identitas_mata_kuliah`, `Nomor_ruang`)
VALUES
  ('c225ff07-a7ff-4c6e-94a3-26e9b3830a9b', '1b2085bf-2d21-4bac-8c31-ac80a9a1ed17', 'b82e1e0d-efd4-4249-ae10-cbc2da9c8c37', 7),
  ('7d5cad3f-361f-4719-bfad-0f71d1c4fbe0', '1b2085bf-2d21-4bac-8c31-ac80a9a1ed17', 'a7c18046-5689-4f99-9b3b-2d48637b562f', 7),
  ('89f2b927-2122-4663-af89-df78233cc5fb', '1b2085bf-2d21-4bac-8c31-ac80a9a1ed17', '7a27348f-3909-400a-b656-bb2f5f9b1b53', 8),
  ('46e5ae0f-db10-487f-99c2-90f79eb0ade6', '5f581eb4-ff78-4e70-bf34-0b2f13a29089', '5cc46f22-dd1e-419a-9a28-0150c67783d6', 9);

INSERT INTO `Kelas`
  (`Identitas`, `Identitas_mahasiswa`, `Identitas_perkuliahan`)
VALUES
  ('5f477df8-3bc0-4008-abdc-0cccce834d42', 'e2c03521-42c5-4915-a5ca-cd4de16caca2', 'c225ff07-a7ff-4c6e-94a3-26e9b3830a9b'),
  ('88a81c88-c446-4447-8c19-78070b8c380e', 'e2c03521-42c5-4915-a5ca-cd4de16caca2', '7d5cad3f-361f-4719-bfad-0f71d1c4fbe0'),
  ('45a565f6-e4e1-4343-b492-bbafb0b0f910', 'e2c03521-42c5-4915-a5ca-cd4de16caca2', '89f2b927-2122-4663-af89-df78233cc5fb'),
  ('7850eae9-7857-44d4-8e36-85091d9f8a09', 'f4739157-17f9-4688-a716-302e42d6a7cf', '46e5ae0f-db10-487f-99c2-90f79eb0ade6');
