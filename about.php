<div class="site-blocks-cover overlay" style="background-image: url(images/headetomboan.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-md-7 text-center" data-aos="fade">
				<span class="caption mb-3">Tomboan Ngawonggo</span>
				<h1 class="mb-4">Tentang Kami</h1>
			</div>
		</div>
	</div>
</div>
<div class="site-section">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-md-6 mb-5 mb-md-0">
				<div class="img-border">
					<img src="images/tomboangal3.jpg" alt="" class="img-fluid">
				</div>
				<img src="images/as.jpg" alt="Image" class="img-fluid image-absolute">
			</div>
			<div class="col-md-5 ml-auto">
				<div class="section-heading text-left">
					<h3 class="mb-5">Tomboan Ngawonggo</h3>
				</div>
				<p class="mb-5">Tomboan Ngawonggo berada di kawasan Situs Petirtaan Ngawonggo, Dusun Nanasan, Desa Ngawonggo, Kecamatan Tajinan, Kabupaten Malang.
					Hadir dengan konsep tradisional dimana suasana yang masih asri seperti berada di pedesaan, pada pintu utama pengunjung wisata akan disajikan dengan sebuah gubuk yang sering disebut dengan pawon (bahasa jawa)/ dapur untuk menyajikan berbagai jenis wedang (minuman) sebelum menuju ke lokasi Patirtaan.
					Berbagai jenis minuman tradisional yang khusus disajikan untuk wisatawan yang hadir, diantaranya ada minuman khas yaitu wedang ngawonggo, wedang rosela, tomboan ijo, tomboan abang yang sengaja di racik dan mempunyai khasiat di dalamnya.

				</p>
			</div>
		</div>
	</div>
</div>
<?php
if (!isset($_GET['id'])) {
?>
	<!-- <div class="site-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-md-6 mx-auto text-center mb-5 section-heading">
					<h2 class="mb-5">Staff Hotel</h2>
				</div>
			</div>

			<div class="row">
				<?php
				include "koneksi.php";
				$staff = mysqli_query($conn, "select * from staff order by id_staff LIMIT 10");
				while ($sql = mysqli_fetch_array($staff)) {

				?>
					<div class="col-md-4 col-lg-4 mb-6">
						<div class="hotel-room text-center">
							<a href="#" class="d-block mb-4 thumbnail"> <a href="?page=detail&id=<?php echo $sql['id_staff'] ?>"> <img src="images/<?php echo $sql['gambar'] ?>" alt="Image" class="img-fluid"></a>
								<div class="p-4">
									<h3 class="heading mb-3"><a href="?page=detail&id=<?php echo $sql['id_staff'] ?>"> <?php echo $sql['nama'] ?></a></h3>
									<p><?php echo substr($sql['deskripsi'], 0, 37); ?> <a href="?page=detail&id=<?php echo $sql['id_staff'] ?>">... selengkapnya </a> </p>
								</div>
						</div>
					</div>
				<?php
				}
				?>
			</div>

		</div>
	</div> -->
<?php
} else {
?> <div class="site-section">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 mb-5 mb-md-0">

					<div class="img-border">
						<img src="images/Capture2.JPG" alt="" class="img-fluid">
					</div>
					<img src="images/mercure2.jpg" alt="Image" class="img-fluid image-absolute">

				</div>
				<div class="col-md-5 ml-auto">
					<div class="section-heading text-left">
						<h2 class="mb-5">Tomboan Ngawonggo</h2>
					</div>
					<p class="mb-4">Tomboan Ngawonggo berada di kawasan Situs Petirtaan Ngawonggo, Dusun Nanasan, Desa Ngawonggo, Kecamatan Tajinan, Kabupaten Malang.
						Hadir dengan konsep tradisional dimana suasana yang masih asri seperti berada di pedesaan, pada pintu utama pengunjung wisata akan disajikan dengan sebuah gubuk yang sering disebut dengan pawon (bahasa jawa)/ dapur untuk menyajikan berbagai jenis wedang (minuman) sebelum menuju ke lokasi Patirtaan.
						Berbagai jenis minuman tradisional yang khusus disajikan untuk wisatawan yang hadir, diantaranya ada minuman khas yaitu wedang ngawonggo, wedang rosela, tomboan ijo, tomboan abang yang sengaja di racik dan mempunyai khasiat di dalamnya.
					</p>
				</div>
			</div>
		</div>
	</div>
<?php
}
