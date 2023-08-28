SELECT
  `Mahasiswa`.`Identitas`,
  `Mahasiswa`.`Nama`,
  `Mahasiswa`.`Email`,
  `Mahasiswa`.`Telepon`,
  `Mata_kuliah`.`Identitas` AS 'Identitas_mata_kuliah',
  `Mata_kuliah`.`Nama` AS 'Nama_mata_kuliah'
FROM
  `Mahasiswa`
JOIN
  `Kelas`
ON
  `Mahasiswa`.`Identitas` = `Kelas`.`Identitas_mahasiswa`
JOIN
  `Perkuliahan`
ON
  `Kelas`.`Identitas_perkuliahan` = `Perkuliahan`.`Identitas`
JOIN
  `Mata_kuliah`
ON
  `Perkuliahan`.`Identitas_mata_kuliah` = `Mata_kuliah`.`Identitas`
WHERE
  `Mata_kuliah`.`Identitas` = '48ecc8e2-1dd3-4406-9ad2-dcaadb01c123';
