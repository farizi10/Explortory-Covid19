--=============================================================--

/* DATA EXPLORATORI (DATASET = CovidDeaths) */

--=============================================================--

-- Fungsi fungsi yang akan digunakan pada bagian ini adalah
--Skills used: Joins, CTE's, 
--			   Temp Tables, 
--			   Windows Functions, 
--			   Aggregate Functions, 
--			   Creating Views, 
--			   Converting Data Types

select * from PortfolioProject..CovidDeaths
order by 3,4

-----------------------------------------------------------------
--Memilih Data yang Akan Digunakan Untuk Exploratori dataset
select location, date, total_cases, new_cases, total_deaths, population
from PortfolioProject..CovidDeaths
where continent is not null
order by 1,2


-----------------------------------------------------------------
--Melihat Total Kasus VS Total Kematian
select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathsPercentage
from PortfolioProject..CovidDeaths
where Location like '%states%' and Location is not null
order by 1,2
--Menunjukan Kemungkinan Apabila Tertular Covid Di Berdasarkan Negara


-----------------------------------------------------------------
--Melihat Total Kasus VS Populasi


--Menunjukan Persentasi Populasi yang Terinfeksi Covid


-----------------------------------------------------------------
--Membandingkan Negara Dengan Jumlah Kasus Infeksi Tertinggi dengan Jumlah Populasi


-----------------------------------------------------------------
--Negara Dengan Jumlah Kasus Kematian per Jumlah Populasi


-----------------------------------------------------------------
----MEMBAGI SERTA MENGURUTKAN BERDASARKAN CONTINENT-----

--Menunjukan Continent dengan Kasus Kematian Tertinggi per Populasi




-----------------------------------------------------------------
--Perhitunga Kasus Secara Global




--=============================================================--

/* DATA EXPLORATORI (DATASET = CovidVaccination) */

--=============================================================--

select * from PortfolioProject..CovidVaccination
order by 3,4


--Total Populasi VS Vakasinasi
--Menunjukan persentasi dari Popilasi yang mendapatkan Vaksinasi Covid


--Menggunakan CTE untuk melakukan Perhitungan pada Partisi pada Query sebelumnya



--Menggunakan Tabel Temp untuk melakukan Perhitungan pada Partisi di Query sebelumnya



--Membuat Tampilan untuk menyimpan data untuk visualisasi selanjutnya
