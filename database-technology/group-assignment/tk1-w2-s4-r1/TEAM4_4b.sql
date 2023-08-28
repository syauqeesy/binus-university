SELECT
  COUNT(`Mahasiswa`.`Identitas`) `Jumlah_mahasiswa_dengan_total_sks_lebih_dari_18`
FROM
  `Mahasiswa`
WHERE
  (
    SELECT
      SUM(`Mata_kuliah`.`Jumlah_sks`) AS `Total_sks`
    FROM
      `Mata_kuliah`
    JOIN
      `Perkuliahan`
    ON
      `Perkuliahan`.`Identitas_mata_kuliah` = `Mata_kuliah`.`Identitas`
    JOIN
      `Kelas`
    ON
      `Kelas`.`Identitas_perkuliahan` = `Perkuliahan`.`Identitas`
    WHERE
      `Kelas`.`Identitas_mahasiswa` = `Mahasiswa`.`Identitas`
  ) > 18
