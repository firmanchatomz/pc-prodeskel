<div class="container my-3">
		<form method="post" action="<?= base_url('admin/updatekk/'.$kk->no_kk) ?>">
	<h4 class="text-capitalize">Edit Data Kartu Keluarga <span class="float-right"><a class="btn btn-primary btn-sm" href="<?= base_url('admin/detailkk/'.$kk->no_kk) ?>">kembali</a></span></h4><hr>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label for="no_kk">Nomor KK <sup class="text-danger">*</sup></label>
				<input type="text" name="no_kk" class="form-control" placeholder="masukkan nomor kk" maxlength="16" disabled>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label for="kepala_keluarga">Nama Kepala Keluarga <sup class="text-danger">*</sup></label>
				<input type="text" name="kepala_keluarga" class="form-control" placeholder="masukkan nama kepala keluarga" value="<?= $kk->kepala_keluarga ?>" required>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
			<div class="form-group">
				<label for="alamat">Alamat <sup class="text-danger">*</sup></label>
				<textarea name="alamat" id="" cols="30" rows="3" class="form-control" required><?= $kk->alamat ?></textarea>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-5">
			<table width="100%">
				<tr>
					<td width="100">
						<div class="form-group">
							<label for="rt">RT <sup class="text-danger">*</sup></label>
						</div>
					</td>
					<td>
						<div class="form-group">
							<input type="number" name="rt" class="form-control" value="<?= $kk->rt ?>" required>
						</div>
					</td>
				</tr>
				<tr>
					<td width="50">
						<div class="form-group">
							<label for="rw">RW <sup class="text-danger">*</sup></label>
						</div>
					</td>

					<td>
						<div class="form-group">
							<input type="number" name="rw" class="form-control" value="<?= $kk->rw ?>" required>
						</div>
					</td>
				</tr>
				<tr>
					<td width="50">
						<div class="form-group">
							<label for="kode_pos">Nama Dusun</label>
						</div>
					</td>
					<td>
						<div class="form-group">
							<input type="text" name="nama_dusun" class="form-control" value="<?= $kk->nama_dusun ?>" placeholder="masukkan nama dusun">
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="col-md-7">
			<table width="100%">
				<tr>
					<td width="150">
						<div class="form-group">
							<label for="kecamatan">Pekerjaan</label>
						</div>
					</td>
					<td>
						<div class="form-group">
							<input type="text" name="pekerjaan" class="form-control" value="<?= $kk->pekerjaan ?>" placeholder="masukkan pekerjaan">
						</div>
					</td>
				</tr>
				<tr>
					<td width="50">
						<div class="form-group">
							<label for="kabupaten">Jabatan</label>
						</div>
					</td>
					<td>
						<div class="form-group">
							<input type="text" name="jabatan" class="form-control" value="<?= $kk->jabatan ?>" placeholder="masukkan nama kabupaten/kota" required>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="form-group float-right">
							<input type="submit" class="btn btn-primary" value="perbaharui">
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	</form>
</div>