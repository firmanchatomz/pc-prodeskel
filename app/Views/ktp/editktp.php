<div class="container my-3">
	<form method="post" action="<?= base_url('admin/updatektp/'.$ktp->no_kk.'/'.$ktp->no_nik) ?>">
	<h4>Edit Data Anggota Keluarga</h4><hr>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label for="no_kk">Nomor Urut</label>
				<input type="text" name="no_urut" class="form-control" placeholder="masukkan nomor urut" value="<?= $ktp->no_urut ?>" required>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label for="no_kk">Nomor NIK</label>
				<input type="text" name="no_nik" class="form-control" maxlength="16" placeholder="masukkan nomor NIK" value="<?= $ktp->no_nik ?>" required>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label for="nama">Nama Lengkap</label>
				<input type="text" name="nama" class="form-control" placeholder="masukkan nama lengkap" value="<?= $ktp->nama ?>" required>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label for="nama">Nomor Akte Kelahiran</label>
				<input type="text" name="no_akte" class="form-control" placeholder="masukkan nomor akte" value="<?= $ktp->no_akte ?>" required>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label for="tempat_lahir">Tempat Lahir</label>
				<input type="text" name="tempat_lahir" class="form-control" placeholder="masukkan tempat tanggal lahir" value="<?= $ktp->tempat_lahir ?>" required>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label for="tanggal_lahir">Tanggal Lahir</label>
				<input type="date" name="tanggal_lahir" class="form-control" value="<?= $ktp->tanggal_lahir ?>" required>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label for="nama">Etnis/ Suku</label>
				<input type="text" name="suku" class="form-control" placeholder="masukkan nama lengkap" value="<?= $ktp->suku ?>" required>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label for="nama">Nama Ibu/Ayah</label>
				<input type="text" name="nama_orangtua" class="form-control" placeholder="masukkan nama ibu/ayah" value="<?= $ktp->nama_orangtua ?>" required>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="jk">Jenis Kelamin</label>
				<select name="jk" id="jk" class="form-control">
					<option value="laki-laki" <?= form_check_option('laki-laki',$ktp->jk) ?>>Laki - Laki</option>
					<option value="perempuan" <?= form_check_option('perempuan',$ktp->jk) ?>>Perempuan</option>
				</select>
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="golongan_darah">Golongan Darah</label>
						<select name="golongan_darah" id="" class="form-control">
								<?php foreach (datagoldar() as $row): ?>
									<option value="<?= $row ?>" <?= form_check_option($row,$ktp->golongan_darah) ?>><?= $row ?></option>
								<?php endforeach ?>
				</select>
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="perkawinan">Status Perkawinan</label>
				<select name="perkawinan" id="perkawinan" class="form-control">
					<option value="belum kawin" <?= form_check_option('belum kawin',$ktp->perkawinan) ?>>Belum Kawin</option>
					<option value="sudah kawin" <?= form_check_option('sudah kawin',$ktp->perkawinan) ?>>Sudah Kawin</option>
					<option value="janda/duda" <?= form_check_option($row,$ktp->perkawinan) ?>>Janda/Duda</option>
				</select>
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label for="agama">Agama</label>
				<select name="agama" id="" class="form-control">
								<?php foreach (dataagama() as $row): ?>
									<option value="<?= $row ?>" <?= form_check_option($row,$ktp->agama) ?>><?= $row ?></option>
								<?php endforeach ?>
				</select>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label for="hubungan_keluarga">Status Hubungan Keluarga</label>
				<select name="hubungan_keluarga" id="" class="form-control">
								<?php foreach (dataHubunganKeluarga() as $row): ?>
									<option value="<?= $row ?>" <?= form_check_option($row,$ktp->hubungan_keluarga) ?>><?= $row ?></option>
								<?php endforeach ?>
				</select>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-5">
			<table width="100%">
				<tr>
					<td width="100">
						<div class="form-group">
							<label for="rt">Akseptor Kb</label>
						</div>
					</td>
					<td>
						<div class="form-group">
							<select name="kb" id="" class="form-control">
								<?php foreach (datakb() as $row): ?>
									<option value="<?= $row ?>" <?= form_check_option($row,$ktp->kb) ?>><?= $row ?></option>
								<?php endforeach ?>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td width="50">
						<div class="form-group">
							<label for="kewarganegaraan">Kewarganegaraan</label>
						</div>
					</td>
					<td>
						<div class="form-group">
							<select name="kewarganegaraan" id="" class="form-control">
								<?php foreach (datakewarganegaraan() as $row): ?>
									<option value="<?= $row ?>" <?= form_check_option($row,$ktp->kewarganegaraan) ?>><?= $row ?></option>
								<?php endforeach ?>
							</select>
						</div>
					</td>
				</tr>
				
			</table>
		</div>
		<div class="col-md-7">
			<table width="100%">
				<tr>
					<td width="50">
						<div class="form-group">
							<label for="pendidikan">Pendidikan Terakhir</label>
						</div>
					</td>
					<td>
						<div class="form-group">
							<select name="pendidikan" id="" class="form-control">
								<?php foreach (datapendidikan() as $row): ?>
									<option value="<?= $row ?>" <?= form_check_option($row,$ktp->pendidikan) ?>><?= $row ?></option>
								<?php endforeach ?>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td width="100">
						<div class="form-group">
							<label for="pekerjaan">Mata Pencaharian</label>
						</div>
					</td>
					<td>
						<div class="form-group">
							<select name="pekerjaan" id="" class="form-control">
								<?php foreach (datapencaharian() as $row): ?>
									<option value="<?= $row ?>" <?= form_check_option($row,$ktp->pekerjaan) ?>><?= $row ?></option>
								<?php endforeach ?>
							</select>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="nama">Cacat Fisik</label>
			</div>
		</div>
		<div class="col-md-10">
			<div class="form-group small">
				<?php foreach (datacacatfisik() as $row): ?>
					<input type="checkbox" name="cacat_fisik[]" value="<?= $row ?>" <?= form_check_checkbox($row,$ktp->cacat_fisik) ?>>&nbsp; <?= $row ?> &nbsp;&nbsp;&nbsp; 
				<?php endforeach ?>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="nama">Cacat Mental</label>
			</div>
		</div>
		<div class="col-md-10">
			<div class="form-group small">
				<?php foreach (datacacatmental() as $row): ?>
					<input type="checkbox" name="cacat_mental[]" value="<?= $row ?>" <?= form_check_checkbox($row,$ktp->cacat_mental) ?>>&nbsp; <?= $row ?> &nbsp;&nbsp;&nbsp; 
				<?php endforeach ?>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="nama">Wajib Pajak</label>
			</div>
		</div>
		<div class="col-md-10">
			<div class="row">
				<?php foreach (datawajibpajak() as $row): ?>
				<div class="col-md-4">
					<div class="form-group small">
						<input type="checkbox" name="wajib_pajak[]" value="<?= $row ?>" <?= form_check_checkbox($row,$ktp->wajib_pajak) ?>>&nbsp; <?= $row ?> &nbsp;&nbsp;&nbsp; 
					</div>
				</div>
				<?php endforeach ?>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="nama">Lembaga Pemerintahan yang diikut</label>
			</div>
		</div>
		<div class="col-md-10">
			<div class="row">
				<?php foreach (datalembagapemerintahan() as $row): ?>
				<div class="col-md-6">
					<div class="form-group small">
						<input type="checkbox" name="lembaga_pemerintahan[]" value="<?= $row ?>" <?= form_check_checkbox($row,$ktp->lembaga_pemerintahan) ?>>&nbsp; <?= $row ?> &nbsp;&nbsp;&nbsp; 
					</div>
				</div>
				<?php endforeach ?>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="nama">Lembaga Masyarakat yang diikut</label>
			</div>
		</div>
		<div class="col-md-10">
			<div class="row">
				<?php foreach (datalembagakemasyarakatan() as $row): ?>
				<div class="col-md-6">
					<div class="form-group small">
						<input type="checkbox" name="lembaga_masyarakat[]" value="<?= $row ?>" <?= form_check_checkbox($row,$ktp->lembaga_masyarakat) ?>>&nbsp; <?= $row ?> &nbsp;&nbsp;&nbsp; 
					</div>
				</div>
				<?php endforeach ?>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
				<label for="nama">Lembaga Ekonomi yang diikut</label>
			</div>
		</div>
		<div class="col-md-10">
			<div class="row">
				<?php foreach (datalembagaekonomi() as $row): ?>
				<div class="col-md-6">
					<div class="form-group small">
						<input type="checkbox" name="lembaga_ekonomi[]" value="<?= $row ?>" <?= form_check_checkbox($row,$ktp->lembaga_ekonomi) ?>>&nbsp; <?= $row ?> &nbsp;&nbsp;&nbsp; 
					</div>
				</div>
				<?php endforeach ?>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="form-group float-right">
				<input type="submit" class="btn btn-primary" value="perbaharui">
				<input type="reset" class="btn btn-success" value="batal">
			</div>
		</div>
	</div>
	</form>
</div>