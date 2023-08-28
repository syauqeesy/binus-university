CREATE TABLE `Mahasiswa` (
  `Identitas` CHAR(36) NOT NULL PRIMARY KEY,
  `Nama` VARCHAR(191) NOT NULL,
  `Jenis_kelamin` VARCHAR(32) NOT NULL,
  `Alamat` TEXT NOT NULL,
  `Email` VARCHAR(191) NOT NULL,
  `Telepon` VARCHAR(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Mahasiswa`
  (`Identitas`, `Nama`, `Jenis_kelamin`, `Alamat`, `Email`, `Telepon`)
VALUES
  ('e2c03521-42c5-4915-a5ca-cd4de16caca2', 'Ichika', 'Laki-laki', 'Japan 111', 'ichika@gmail.com', '081926528456'),
  ('f4739157-17f9-4688-a716-302e42d6a7cf', 'Kirito', 'Laki-laki', 'Japan 112', 'kirito@gmail.com', '081699828973'),
  ('c7040335-e88b-4099-9153-ed3811b7252b', 'Inori', 'Perempuan', 'Japan 113', 'inori@gmail.com', '081462837455'),
  ('f0fadb4f-a712-4d6e-8b20-d1c505281184', 'Mikasa', 'Perempuan', 'Japan 114', 'mikasa@gmail.com', '081918119281'),
  ('2a79041a-35df-4d14-97b4-b5108da793ac', 'Obito', 'Laki-laki', 'Japan 115', 'obito@gmail.com', '081721522456'),
  ('ca1e3867-5b0f-4a71-ba0a-6aefc5ef058c', 'Kurumi', 'Perempuan', 'Japan 116', 'kurumi@gmail.com', '081926528775');

CREATE TABLE `Dosen` (
  `Identitas` CHAR(36) NOT NULL PRIMARY KEY,
  `Nama` VARCHAR(191) NOT NULL,
  `Email` VARCHAR(191) NOT NULL,
  `No_hp` VARCHAR(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Dosen`
  (`Identitas`, `Nama`, `Email`, `No_hp`)
VALUES
  ('96ac242c-f27b-4917-9ab4-22e1d01f70ac', 'Armin', 'armin@gmail.com', '081882771364'),
  ('7820fdcb-8797-42d0-9843-14f46bbd2947', 'Arima', 'arima@gmail.com', '081812771364'),
  ('4c7a8cad-79e4-4c2d-b95c-3e131bc0d6ba', 'Tsubaki', 'tsubaki@gmail.com', '081882171364'),
  ('cd1e192f-fd8a-45b6-8cbc-952f1f0e9f31', 'Itadori', 'itadori@gmail.com', '081882671364'),
  ('75244599-581d-47d0-9c5f-4b24f8b84801', 'Satoru', 'satoru@gmail.com', '081882971364'),
  ('11feefcb-17c7-4afc-91c7-70857a31b013', 'Ryomen', 'ryomen@gmail.com', '081882271364');

CREATE TABLE `Mata_kuliah` (
  `Identitas` CHAR(36) NOT NULL PRIMARY KEY,
  `Nama` VARCHAR(191) NOT NULL,
  `Jumlah_sks` INT NOT NULL,
  `Tipe` VARCHAR(32) NOT NULL,
  `Identitas_pengajar` CHAR(36) NOT NULL,
  `Kapasitas` TINYINT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Mata_kuliah`
  (`Identitas`, `Nama`, `Jumlah_sks`, `Tipe`, `Identitas_pengajar`, `Kapasitas`)
VALUES
  ('48ecc8e2-1dd3-4406-9ad2-dcaadb01c123', 'Database Technology', 4, 'Teori & Praktik', '75244599-581d-47d0-9c5f-4b24f8b84801', 20),
  ('c3ef6f5b-1a6a-4d22-a08c-e393f962712d', 'Algorithm Design & Analysis', 4, 'Teori', '96ac242c-f27b-4917-9ab4-22e1d01f70ac', 19),
  ('3529fbc8-2cbc-4778-9e79-a05058c09b72', 'Introduction to Algorithm', 6, 'Teori & Praktik', '75244599-581d-47d0-9c5f-4b24f8b84801', 15),
  ('2a2429ed-90fc-433a-a1d8-d1247e5f525b', 'Data Structure', 2, 'Teori', '96ac242c-f27b-4917-9ab4-22e1d01f70ac', 20),
  ('19268ca8-0b2f-4b8a-b48d-234be5c13226', 'Artificial Intelligence', 6, 'Teori & Praktik', '11feefcb-17c7-4afc-91c7-70857a31b013', 15),
  ('555473b4-31da-401b-af17-82b5ee6429d9', 'Computer Networks', 4, 'Teori', '96ac242c-f27b-4917-9ab4-22e1d01f70ac', 20);

CREATE TABLE `Ruang` (
  `Nomor` INT NOT NULL PRIMARY KEY,
  `Jenis` VARCHAR(32) NOT NULL,
  `Fasilitas` TEXT NOT NULL,
  `Kapasitas` TINYINT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Ruang`
  (`Nomor`, `Jenis`, `Fasilitas`, `Kapasitas`)
VALUES
  (1, 'Praktik', 'Komputer', 20),
  (2, 'Teori', 'Meja', 25),
  (3, 'Praktik', 'Komputer', 20),
  (4, 'Teori', 'Meja', 20),
  (5, 'Praktik', 'Komputer', 20),
  (6, 'Teori', 'Meja', 25);

CREATE TABLE `Perkuliahan` (
  `Identitas` CHAR(36) NOT NULL PRIMARY KEY,
  `Identitas_dosen` CHAR(36) NOT NULL,
  `Identitas_mata_kuliah` CHAR(36) NOT NULL,
  `Nomor_ruang` INT NOT NULL,
  CONSTRAINT `FK_Perkuliahan_IdentitasDosen` FOREIGN KEY (`Identitas_dosen`) REFERENCES `Dosen`(`Identitas`),
  CONSTRAINT `FK_Perkuliahan_IdentitasMataKuliah` FOREIGN KEY (`Identitas_mata_kuliah`) REFERENCES `Mata_kuliah`(`Identitas`),
  CONSTRAINT `FK_Perkuliahan_NomorRuang` FOREIGN KEY (`Nomor_ruang`) REFERENCES `Ruang`(`Nomor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Perkuliahan`
  (`Identitas`, `Identitas_dosen`, `Identitas_mata_kuliah`, `Nomor_ruang`)
VALUES
  ('f8651ca1-4071-4e1c-ad26-c1e8bc79a3c6', '75244599-581d-47d0-9c5f-4b24f8b84801', '48ecc8e2-1dd3-4406-9ad2-dcaadb01c123', 1),
  ('94ff6403-bd44-4f74-bde4-c10f8153a457', '75244599-581d-47d0-9c5f-4b24f8b84801', '48ecc8e2-1dd3-4406-9ad2-dcaadb01c123', 2),
  ('bdf55f1e-1313-4548-8669-155014715ade', '75244599-581d-47d0-9c5f-4b24f8b84801', '48ecc8e2-1dd3-4406-9ad2-dcaadb01c123', 1),
  ('2317eae1-ee05-42ba-9c14-ebd5c661170b', '96ac242c-f27b-4917-9ab4-22e1d01f70ac', '2a2429ed-90fc-433a-a1d8-d1247e5f525b', 4),
  ('a3ebf066-6ee8-40ba-a9cf-5a8a84127837', '96ac242c-f27b-4917-9ab4-22e1d01f70ac', '2a2429ed-90fc-433a-a1d8-d1247e5f525b', 6),
  ('e23ee588-e367-4773-8387-cad7c47f4356', '11feefcb-17c7-4afc-91c7-70857a31b013', '19268ca8-0b2f-4b8a-b48d-234be5c13226', 5);

CREATE TABLE `Kelas` (
  `Identitas` CHAR(36) NOT NULL PRIMARY KEY,
  `Identitas_mahasiswa` CHAR(36) NOT NULL,
  `Identitas_perkuliahan` CHAR(36) NOT NULL,
  CONSTRAINT `FK_Kelas_IdentitasMahasiswa` FOREIGN KEY (`Identitas_mahasiswa`) REFERENCES `Mahasiswa`(`Identitas`),
  CONSTRAINT `FK_Kelas_IdentitasPerkuliahan` FOREIGN KEY (`Identitas_perkuliahan`) REFERENCES `Perkuliahan`(`Identitas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Kelas`
  (`Identitas`, `Identitas_mahasiswa`, `Identitas_perkuliahan`)
VALUES
  ('5282d7e9-0592-4234-ad9d-0f904fd87a68', 'e2c03521-42c5-4915-a5ca-cd4de16caca2', 'f8651ca1-4071-4e1c-ad26-c1e8bc79a3c6'),
  ('dd9b123a-40c1-4908-907c-14be25be17de', 'e2c03521-42c5-4915-a5ca-cd4de16caca2', '2317eae1-ee05-42ba-9c14-ebd5c661170b'),
  ('6b0ead3a-318f-4319-a91a-540afab0b11c', 'e2c03521-42c5-4915-a5ca-cd4de16caca2', 'e23ee588-e367-4773-8387-cad7c47f4356'),
  ('fd7c87fc-e1f9-48e6-b17b-b1023b12cb79', 'f4739157-17f9-4688-a716-302e42d6a7cf', 'a3ebf066-6ee8-40ba-a9cf-5a8a84127837'),
  ('201c1b48-5157-449f-9e50-e6aab776b0b2', 'f4739157-17f9-4688-a716-302e42d6a7cf', 'f8651ca1-4071-4e1c-ad26-c1e8bc79a3c6'),
  ('669a1e68-bca3-4715-b1db-9e774265772a', 'c7040335-e88b-4099-9153-ed3811b7252b', 'f8651ca1-4071-4e1c-ad26-c1e8bc79a3c6');
