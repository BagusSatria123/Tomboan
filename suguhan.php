<?php
if (!isset($_GET['jenis'])) {
?>
	<div class="site-blocks-cover overlay" style="background-image: url(images/suguhan1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-md-7 text-center" data-aos="fade">
					<h1 class="mb-4">Suguhan</h1>
					<p class="mb-4">Suguhan Kami Tidak Mengandung Hewan</p>
				</div>
			</div>
		</div>
	</div>
	<div class="site-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-md-6 mx-auto text-center mb-4 section-heading">
					<h2 class="mb-5">Suguhan</h2>
				</div>
			</div>
			<div class="row">
				<?php
				$sql = mysqli_query($conn, "SELECT * FROM suguhan");
				foreach ($sql as $value) {
				?>
					<div class="col-md-6 col-lg-4 mb-5">
						<div class="hotel-room text-center">
							<a href="?page=suguhan&jenis=<?= $value['jenis']; ?>" class="d-block mb-0 thumbnail"><img src="images/<?= $value['gambar']; ?>" alt="Image" class="img-fluid"></a>
							<div class="hotel-room-body">
								<h3 class="heading mb-0"><a href="#"><?= $value['jenis']; ?></a></h3>
								<strong class="price"><?= $value['deskripsi']; ?></strong>
							</div>
						</div>
					</div>
				<?php
				}
				?>
			</div>
		</div>
	<?php
} else {
	?>
		<div class="site-blocks-cover overlay" style="background-image: url(images/suguhan1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-7 text-center" data-aos="fade">
						<h1 class="mb-4">Suguhan</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="site-section bg-light">
			<div class="container">
				<div class="row">
					<div class="col-md-6 mx-auto text-center mb-5 section-heading">
						<h2 class="mb-5">Suguhan</h2>
					</div>
				</div>
				<div class="row">
					<?php
					$sql = mysqli_query($conn, "SELECT * FROM suguhan WHERE Jenis='$_GET[jenis]'");
					foreach ($sql as $value) {
					?>
						<div class="col-md-12 col-lg-12 mb-12">
							<div class="hotel-room text-center">
								<a class="d-block mb-0 thumbnail"><img src="images/<?= $value['gambar']; ?>" alt="Image" class="img-fluid"></a>
								<!-- <a href="?page=ffaa" class="d-block mb-0 thumbnail"><img src="images/<?= $value['gambar']; ?>" alt="Image" class="img-fluid"></a> -->

								<div class="hotel-room-body">
									<h3 class="heading mb-0"><a href="#"><?= $value['jenis']; ?></a></h3>
									<strong class="price"><?= $value['deskripsi']; ?></strong>
								</div>
							</div>
						</div>
					<?php
					}
					?>
				</div>
			</div>
		</div>
	<?php
}
	?>