        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="container-fluid clearfix">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © <?php echo getyear() ?>
              <a href="https://www.cikarastudio.com/" target="_blank">Cikara Studio</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"><?= $setting->judul_footer ?>
            </span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src=<?= base_url('theme/staradmin/vendors/js/vendor.bundle.base.js')?>></script>
  <script src=<?= base_url('theme/staradmin/vendors/js/vendor.bundle.addons.js')?>></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src=<?= base_url('theme/staradmin/js/off-canvas.js')?>></script>
  <script src=<?= base_url('theme/staradmin/js/misc.js')?>></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src=<?= base_url('theme/staradmin/js/dashboard.js')?>></script>
  <!-- End custom js for this page-->
  <script src=<?= base_url('theme/staradmin/js/chart.js')?>></script>
  <script src=<?= base_url('js/chatomz.js')?>></script>
</body>

</html>