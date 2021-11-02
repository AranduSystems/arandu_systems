package Vistas;

import Dao.DAOTipoMovimiento;
import Dao.DAOVenta;
import Modelos.TipoMovimiento;
import Modelos.Venta;
import java.text.DecimalFormat;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author armando
 */
public class JFrmConsultaVenta extends javax.swing.JInternalFrame {

    TipoMovimiento tm = new TipoMovimiento();
    Venta v = new Venta();

    DAOTipoMovimiento daoTipoMovimiento = new DAOTipoMovimiento();
    DAOVenta daoVenta = new DAOVenta();

    ArrayList<Object[]> datosTipoMovimiento = new ArrayList<>();
    ArrayList<Object[]> datosVentas = new ArrayList<>();

    String tres_ceros = String.format("%%0%dd", 3);
    String siete_ceros = String.format("%%0%dd", 7);
    int Establecimiento;
    Double montoTotalSinIva = 0.0;
    Double montoTotalIva = 0.0;
    Double montoTotal = 0.0;

    /**
     * Creates new form JFrmConsultaVenta
     */
    public JFrmConsultaVenta() {
        setTitle("JFrmConsultaVenta");
        initComponents();
    }

    public void cargarTipoMovimiento() {
        DefaultTableModel modelo = (DefaultTableModel) tablaDatosTipoMovimiento.getModel();
        modelo.setRowCount(0);
        datosTipoMovimiento = daoTipoMovimiento.consultarFactura(txtCriterioTipoMovimiento.getText(), "EMITIDA");
        for (Object[] obj : datosTipoMovimiento) {
            modelo.addRow(obj);
        }
        this.tablaDatosTipoMovimiento.setModel(modelo);
    }

    private void buscarTipoMovimiento() {
        cargarTipoMovimiento();
        BuscadorTipoMovimiento.setModal(true);
        BuscadorTipoMovimiento.setSize(540, 285);
        BuscadorTipoMovimiento.setLocationRelativeTo(this);
        BuscadorTipoMovimiento.setVisible(true);
        int fila = tablaDatosTipoMovimiento.getSelectedRow();
        if (fila >= 0) {
            txtCodigoTipoMovimiento.setText(tablaDatosTipoMovimiento.getValueAt(fila, 0).toString());
            txtDescripcionTipoMovimiento.setText(tablaDatosTipoMovimiento.getValueAt(fila, 1).toString());
        } else {
            txtCodigoTipoMovimiento.setText(null);
            txtDescripcionTipoMovimiento.setText(null);
        }
    }

    public void cargarVentas() {
        DefaultTableModel modelo = (DefaultTableModel) tablaDatosVentas.getModel();
        modelo.setRowCount(0);
        int idtipomovimiento = Integer.parseInt(txtCodigoTipoMovimiento.getText());
        String criterio = txtCriterioCompras.getText();
        datosVentas = daoVenta.consultar(criterio, idtipomovimiento);
        for (Object[] obj : datosVentas) {
            modelo.addRow(obj);
        }
        this.tablaDatosVentas.setModel(modelo);
    }

    private void buscarVentas() {
        cargarVentas();
        BuscadorVentas.setModal(true);
        BuscadorVentas.setSize(710, 360);
        BuscadorVentas.setLocationRelativeTo(this);
        BuscadorVentas.setVisible(true);
        int fila = tablaDatosVentas.getSelectedRow();
        DecimalFormat formatter;
        if (fila >= 0) {
            int establecimiento = Integer.parseInt(tablaDatosVentas.getValueAt(fila, 0).toString());
            int puntoemision = Integer.parseInt(tablaDatosVentas.getValueAt(fila, 1).toString());
            int numero = Integer.parseInt(tablaDatosVentas.getValueAt(fila, 2).toString());
            txtEstablecimiento.setText(String.format(tres_ceros, establecimiento));
            txtPuntoEmision.setText(String.format(tres_ceros, puntoemision));
            txtNumero.setText(String.format(siete_ceros, numero));
            txtComprobante.setText(tablaDatosVentas.getValueAt(fila, 3).toString());
            txtTimbrado.setText(tablaDatosVentas.getValueAt(fila, 4).toString());
            txtCodigoVenta.setText(tablaDatosVentas.getValueAt(fila, 5).toString());
            txtFecha.setText(tablaDatosVentas.getValueAt(fila, 6).toString());
            txtObservacionVenta.setText(tablaDatosVentas.getValueAt(fila, 7).toString());
            int idmoneda = Integer.parseInt(tablaDatosVentas.getValueAt(fila, 8).toString());
            txtCodigoMoneda.setText("" + idmoneda);
            txtDescripcionMoneda.setText(tablaDatosVentas.getValueAt(fila, 9).toString());
            txtCodigoDeposito.setText(tablaDatosVentas.getValueAt(fila, 10).toString());
            txtDescripcionDeposito.setText(tablaDatosVentas.getValueAt(fila, 11).toString());
            txtCodigoProveedor.setText(tablaDatosVentas.getValueAt(fila, 12).toString());
            txtDescripcionProveedor.setText(tablaDatosVentas.getValueAt(fila, 13).toString());
            txtCodigoUsuario.setText(tablaDatosVentas.getValueAt(fila, 14).toString());
            txtDescripcionUsuario.setText(tablaDatosVentas.getValueAt(fila, 15).toString());
            if (idmoneda == 1) {
                formatter = new DecimalFormat("#,###");
            } else {
                formatter = new DecimalFormat("#,###.000");
            }
            montoTotalSinIva = Double.parseDouble(tablaDatosVentas.getValueAt(fila, 16).toString());
            txtTotalNeto.setText(formatter.format(montoTotalSinIva));
            montoTotalIva = Double.parseDouble(tablaDatosVentas.getValueAt(fila, 17).toString());
            txtTotalIva.setText(formatter.format(montoTotalIva));
            montoTotal = montoTotalSinIva + montoTotalIva;
            txtMontoTotal.setText(formatter.format(montoTotal));
            int idcuenta = Integer.parseInt(tablaDatosVentas.getValueAt(fila, 18).toString());
            if (idcuenta != 0) {
                txtCodigoCuenta.setText("" + idcuenta);
            } else {
                txtCodigoCuenta.setText(null);
            }
            String DescripcionCuenta = tablaDatosVentas.getValueAt(fila, 19).toString();
            if (DescripcionCuenta.equals("NULO")) {
                txtDescripcionCuenta.setText("");
            } else {
                txtDescripcionCuenta.setText(DescripcionCuenta);

            }
            btnCancelar.grabFocus();
        } else {
            txtEstablecimiento.setText(null);
            txtPuntoEmision.setText(null);
            txtNumero.setText(null);
            txtComprobante.setText(null);
            txtTimbrado.setText(null);
            txtCodigoVenta.setText(null);
            txtFecha.setText(null);
            txtObservacionVenta.setText(null);
            txtCodigoMoneda.setText(null);
            txtDescripcionMoneda.setText(null);
            txtCodigoDeposito.setText(null);
            txtDescripcionDeposito.setText(null);
            txtCodigoProveedor.setText(null);
            txtDescripcionProveedor.setText(null);
            txtCodigoUsuario.setText(null);
            txtDescripcionUsuario.setText(null);
            txtTotalNeto.setText(null);
            txtTotalIva.setText(null);
            txtMontoTotal.setText(null);
            txtCodigoCuenta.setText(null);
            txtDescripcionCuenta.setText(null);
            montoTotalSinIva = 0.0;
            montoTotalIva = 0.0;
            montoTotal = 0.0;
        }
    }

    private void limpiarCampos() {
        txtEstablecimiento.setText(null);
        txtPuntoEmision.setText(null);
        txtNumero.setText(null);
        txtComprobante.setText(null);
        txtTimbrado.setText(null);
        txtCodigoVenta.setText(null);
        txtFecha.setText(null);
        txtObservacionVenta.setText(null);
        txtCodigoMoneda.setText(null);
        txtDescripcionMoneda.setText(null);
        txtCodigoDeposito.setText(null);
        txtDescripcionDeposito.setText(null);
        txtCodigoProveedor.setText(null);
        txtDescripcionProveedor.setText(null);
        txtCodigoUsuario.setText(null);
        txtDescripcionUsuario.setText(null);
        txtTotalNeto.setText(null);
        txtTotalIva.setText(null);
        txtMontoTotal.setText(null);
        txtCodigoCuenta.setText(null);
        txtDescripcionCuenta.setText(null);
        montoTotalSinIva = 0.0;
        montoTotalIva = 0.0;
        montoTotal = 0.0;
        txtCodigoTipoMovimiento.setText(null);
        txtDescripcionTipoMovimiento.setText(null);
        txtCodigoTipoMovimiento.grabFocus();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        BuscadorTipoMovimiento = new javax.swing.JDialog();
        jPanel3 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        txtCriterioTipoMovimiento = new org.jdesktop.swingx.JXTextField();
        jScrollPane2 = new javax.swing.JScrollPane();
        tablaDatosTipoMovimiento = new javax.swing.JTable();
        BuscadorVentas = new javax.swing.JDialog();
        jPanel5 = new javax.swing.JPanel();
        jLabel20 = new javax.swing.JLabel();
        txtCriterioCompras = new org.jdesktop.swingx.JXTextField();
        jScrollPane4 = new javax.swing.JScrollPane();
        tablaDatosVentas = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        txtCodigoTipoMovimiento = new org.jdesktop.swingx.JXTextField();
        txtDescripcionTipoMovimiento = new org.jdesktop.swingx.JXTextField();
        jLabel4 = new javax.swing.JLabel();
        btnBuscar = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        txtEstablecimiento = new org.jdesktop.swingx.JXTextField();
        txtPuntoEmision = new org.jdesktop.swingx.JXTextField();
        txtNumero = new org.jdesktop.swingx.JXTextField();
        txtComprobante = new org.jdesktop.swingx.JXTextField();
        txtTimbrado = new org.jdesktop.swingx.JXTextField();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        txtCodigoVenta = new org.jdesktop.swingx.JXTextField();
        jLabel9 = new javax.swing.JLabel();
        txtFecha = new org.jdesktop.swingx.JXTextField();
        jLabel10 = new javax.swing.JLabel();
        txtObservacionVenta = new org.jdesktop.swingx.JXTextField();
        jLabel11 = new javax.swing.JLabel();
        txtCodigoMoneda = new org.jdesktop.swingx.JXTextField();
        txtDescripcionMoneda = new org.jdesktop.swingx.JXTextField();
        jLabel12 = new javax.swing.JLabel();
        txtCodigoDeposito = new org.jdesktop.swingx.JXTextField();
        txtDescripcionDeposito = new org.jdesktop.swingx.JXTextField();
        jLabel13 = new javax.swing.JLabel();
        txtCodigoProveedor = new org.jdesktop.swingx.JXTextField();
        txtDescripcionProveedor = new org.jdesktop.swingx.JXTextField();
        jLabel14 = new javax.swing.JLabel();
        txtCodigoUsuario = new org.jdesktop.swingx.JXTextField();
        txtDescripcionUsuario = new org.jdesktop.swingx.JXTextField();
        jLabel15 = new javax.swing.JLabel();
        txtTotalNeto = new org.jdesktop.swingx.JXTextField();
        jLabel16 = new javax.swing.JLabel();
        txtTotalIva = new org.jdesktop.swingx.JXTextField();
        jLabel21 = new javax.swing.JLabel();
        txtMontoTotal = new org.jdesktop.swingx.JXTextField();
        jLabel17 = new javax.swing.JLabel();
        txtCodigoCuenta = new org.jdesktop.swingx.JXTextField();
        txtDescripcionCuenta = new org.jdesktop.swingx.JXTextField();
        btnCancelar = new javax.swing.JButton();

        jPanel3.setBackground(new java.awt.Color(255, 255, 255));

        jLabel6.setBackground(new java.awt.Color(50, 104, 151));
        jLabel6.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("BUSCADOR DE TIPOS DE MOVIMIENTOS");
        jLabel6.setOpaque(true);

        txtCriterioTipoMovimiento.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        txtCriterioTipoMovimiento.setPrompt("Aqui puede ingresar los filtros para la busqueda..");
        txtCriterioTipoMovimiento.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCriterioTipoMovimientoActionPerformed(evt);
            }
        });
        txtCriterioTipoMovimiento.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtCriterioTipoMovimientoKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCriterioTipoMovimientoKeyTyped(evt);
            }
        });

        tablaDatosTipoMovimiento.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        tablaDatosTipoMovimiento.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "<html><p style=\"text-align:center\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">Código</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">Descripción</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">Abreviacion</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">idTipoComprobante</span></span></span></p></html> "
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tablaDatosTipoMovimiento.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tablaDatosTipoMovimientoMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(tablaDatosTipoMovimiento);
        if (tablaDatosTipoMovimiento.getColumnModel().getColumnCount() > 0) {
            tablaDatosTipoMovimiento.getColumnModel().getColumn(0).setMinWidth(60);
            tablaDatosTipoMovimiento.getColumnModel().getColumn(0).setPreferredWidth(60);
            tablaDatosTipoMovimiento.getColumnModel().getColumn(0).setMaxWidth(60);
            tablaDatosTipoMovimiento.getColumnModel().getColumn(2).setMinWidth(100);
            tablaDatosTipoMovimiento.getColumnModel().getColumn(2).setPreferredWidth(100);
            tablaDatosTipoMovimiento.getColumnModel().getColumn(2).setMaxWidth(100);
            tablaDatosTipoMovimiento.getColumnModel().getColumn(3).setMinWidth(0);
            tablaDatosTipoMovimiento.getColumnModel().getColumn(3).setPreferredWidth(0);
            tablaDatosTipoMovimiento.getColumnModel().getColumn(3).setMaxWidth(0);
        }

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtCriterioTipoMovimiento, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 511, Short.MAX_VALUE)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 511, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtCriterioTipoMovimiento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout BuscadorTipoMovimientoLayout = new javax.swing.GroupLayout(BuscadorTipoMovimiento.getContentPane());
        BuscadorTipoMovimiento.getContentPane().setLayout(BuscadorTipoMovimientoLayout);
        BuscadorTipoMovimientoLayout.setHorizontalGroup(
            BuscadorTipoMovimientoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        BuscadorTipoMovimientoLayout.setVerticalGroup(
            BuscadorTipoMovimientoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        jPanel5.setBackground(new java.awt.Color(255, 255, 255));

        jLabel20.setBackground(new java.awt.Color(50, 104, 151));
        jLabel20.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        jLabel20.setForeground(new java.awt.Color(255, 255, 255));
        jLabel20.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel20.setText("BUSCADOR DE VENTAS");
        jLabel20.setOpaque(true);

        txtCriterioCompras.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        txtCriterioCompras.setPrompt("Aqui puede ingresar los filtros para la busqueda..");
        txtCriterioCompras.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCriterioComprasActionPerformed(evt);
            }
        });
        txtCriterioCompras.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtCriterioComprasKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCriterioComprasKeyTyped(evt);
            }
        });

        tablaDatosVentas.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        tablaDatosVentas.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "<html><p style=\"text-align:center\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">Establecimiento</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">PuntoEmision</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">Numero</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">Comprobante</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">Timbrado</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">CodigoCompra</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">FechaCompra</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">ObservacionCompra</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">CodigoMoneda</span></span></span></p></html> ", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">DescripcionMoneda</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">CodigoDeposito</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">DescripcionDeposito</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">CodigoProveedor</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">Proveedor</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">CodigoUsuario</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">DescripcionUsuario</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">MontoTotalSinIva</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">MontoTotalIva</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">CodigoCuenta</span></span></span></p></html>", "<html><p style=\"text-align:right\"><span style=\"color:#000066\"><span style=\"font-family:SansSerif\"><span style=\"font-size:10px\">DescripcionCuenta</span></span></span></p></html>"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.Integer.class, java.lang.Integer.class, java.lang.String.class, java.lang.Integer.class, java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.Double.class, java.lang.Double.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tablaDatosVentas.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tablaDatosVentasMouseClicked(evt);
            }
        });
        jScrollPane4.setViewportView(tablaDatosVentas);
        if (tablaDatosVentas.getColumnModel().getColumnCount() > 0) {
            tablaDatosVentas.getColumnModel().getColumn(0).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(0).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(0).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(1).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(1).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(1).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(2).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(2).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(2).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(5).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(5).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(5).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(7).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(7).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(7).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(8).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(8).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(8).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(9).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(9).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(9).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(10).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(10).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(10).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(11).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(11).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(11).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(12).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(12).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(12).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(14).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(14).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(14).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(15).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(15).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(15).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(16).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(16).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(16).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(17).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(17).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(17).setMaxWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(18).setMinWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(18).setPreferredWidth(0);
            tablaDatosVentas.getColumnModel().getColumn(18).setMaxWidth(0);
        }

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel20, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtCriterioCompras, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 680, Short.MAX_VALUE)
                    .addComponent(jScrollPane4, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 680, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addComponent(jLabel20, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtCriterioCompras, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane4, javax.swing.GroupLayout.DEFAULT_SIZE, 280, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout BuscadorVentasLayout = new javax.swing.GroupLayout(BuscadorVentas.getContentPane());
        BuscadorVentas.getContentPane().setLayout(BuscadorVentasLayout);
        BuscadorVentasLayout.setHorizontalGroup(
            BuscadorVentasLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        BuscadorVentasLayout.setVerticalGroup(
            BuscadorVentasLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        setClosable(true);
        setIconifiable(true);

        jPanel1.setBackground(new java.awt.Color(50, 104, 151));

        jLabel1.setFont(new java.awt.Font("SansSerif", 0, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Consulta de Movimiento de Ventas");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));

        txtCodigoTipoMovimiento.setToolTipText("Cód. T.M.");
        txtCodigoTipoMovimiento.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtCodigoTipoMovimiento.setPrompt("Cód. T.M.");
        txtCodigoTipoMovimiento.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCodigoTipoMovimientoActionPerformed(evt);
            }
        });
        txtCodigoTipoMovimiento.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtCodigoTipoMovimientoKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCodigoTipoMovimientoKeyTyped(evt);
            }
        });

        txtDescripcionTipoMovimiento.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtDescripcionTipoMovimiento.setEnabled(false);
        txtDescripcionTipoMovimiento.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtDescripcionTipoMovimiento.setPrompt("Descripción o nombre del tipo de movimiento...");
        txtDescripcionTipoMovimiento.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtDescripcionTipoMovimientoActionPerformed(evt);
            }
        });
        txtDescripcionTipoMovimiento.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtDescripcionTipoMovimientoKeyTyped(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel4.setText("Tipo de Movimiento:");

        btnBuscar.setFont(new java.awt.Font("SansSerif", 0, 11)); // NOI18N
        btnBuscar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/icons8_browse_folder_16px.png"))); // NOI18N
        btnBuscar.setText("Buscar");
        btnBuscar.setOpaque(false);
        btnBuscar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBuscarActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel5.setText("Comprobante:");

        txtEstablecimiento.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtEstablecimiento.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtEstablecimiento.setEnabled(false);
        txtEstablecimiento.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtEstablecimiento.setPrompt("000");
        txtEstablecimiento.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtEstablecimientoActionPerformed(evt);
            }
        });
        txtEstablecimiento.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtEstablecimientoKeyTyped(evt);
            }
        });

        txtPuntoEmision.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtPuntoEmision.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtPuntoEmision.setEnabled(false);
        txtPuntoEmision.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtPuntoEmision.setPrompt("000");
        txtPuntoEmision.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtPuntoEmisionActionPerformed(evt);
            }
        });
        txtPuntoEmision.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtPuntoEmisionKeyTyped(evt);
            }
        });

        txtNumero.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtNumero.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtNumero.setEnabled(false);
        txtNumero.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtNumero.setPrompt("0000000");
        txtNumero.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtNumeroActionPerformed(evt);
            }
        });
        txtNumero.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtNumeroKeyTyped(evt);
            }
        });

        txtComprobante.setBackground(new java.awt.Color(0, 102, 102));
        txtComprobante.setForeground(new java.awt.Color(255, 255, 255));
        txtComprobante.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtComprobante.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtComprobante.setEnabled(false);
        txtComprobante.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtComprobante.setPrompt("000-000-0000000");
        txtComprobante.setPromptForeground(new java.awt.Color(153, 153, 153));

        txtTimbrado.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtTimbrado.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtTimbrado.setEnabled(false);
        txtTimbrado.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtTimbrado.setPrompt("00000000");
        txtTimbrado.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtTimbradoActionPerformed(evt);
            }
        });
        txtTimbrado.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtTimbradoKeyTyped(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel7.setText("Timbrado:");

        jLabel8.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel8.setText("Código Venta:");

        txtCodigoVenta.setBackground(new java.awt.Color(0, 102, 102));
        txtCodigoVenta.setForeground(new java.awt.Color(255, 255, 255));
        txtCodigoVenta.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtCodigoVenta.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtCodigoVenta.setEnabled(false);
        txtCodigoVenta.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtCodigoVenta.setPrompt("Id venta...");
        txtCodigoVenta.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCodigoVentaActionPerformed(evt);
            }
        });
        txtCodigoVenta.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCodigoVentaKeyTyped(evt);
            }
        });

        jLabel9.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel9.setText("Fecha:");

        txtFecha.setBackground(new java.awt.Color(0, 102, 102));
        txtFecha.setForeground(new java.awt.Color(255, 255, 255));
        txtFecha.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtFecha.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtFecha.setEnabled(false);
        txtFecha.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtFecha.setPrompt("Fec. Venta...");
        txtFecha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtFechaActionPerformed(evt);
            }
        });
        txtFecha.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtFechaKeyTyped(evt);
            }
        });

        jLabel10.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel10.setText("Observación:");

        txtObservacionVenta.setBackground(new java.awt.Color(0, 102, 102));
        txtObservacionVenta.setForeground(new java.awt.Color(255, 255, 255));
        txtObservacionVenta.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        txtObservacionVenta.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtObservacionVenta.setEnabled(false);
        txtObservacionVenta.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtObservacionVenta.setPrompt("Observaciones que posee la venta...");
        txtObservacionVenta.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtObservacionVentaActionPerformed(evt);
            }
        });
        txtObservacionVenta.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtObservacionVentaKeyTyped(evt);
            }
        });

        jLabel11.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel11.setText("Moneda:");

        txtCodigoMoneda.setBackground(new java.awt.Color(0, 102, 102));
        txtCodigoMoneda.setForeground(new java.awt.Color(255, 255, 255));
        txtCodigoMoneda.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtCodigoMoneda.setEnabled(false);
        txtCodigoMoneda.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtCodigoMoneda.setPrompt("Cód. Mon.");
        txtCodigoMoneda.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtCodigoMonedaKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCodigoMonedaKeyTyped(evt);
            }
        });

        txtDescripcionMoneda.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtDescripcionMoneda.setEnabled(false);
        txtDescripcionMoneda.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtDescripcionMoneda.setPrompt("Descripción o nombre de la moneda...");
        txtDescripcionMoneda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtDescripcionMonedaActionPerformed(evt);
            }
        });
        txtDescripcionMoneda.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtDescripcionMonedaKeyTyped(evt);
            }
        });

        jLabel12.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel12.setText("Depósito:");

        txtCodigoDeposito.setBackground(new java.awt.Color(0, 102, 102));
        txtCodigoDeposito.setForeground(new java.awt.Color(255, 255, 255));
        txtCodigoDeposito.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtCodigoDeposito.setEnabled(false);
        txtCodigoDeposito.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtCodigoDeposito.setPrompt("Cód. Dep.");
        txtCodigoDeposito.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtCodigoDepositoKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCodigoDepositoKeyTyped(evt);
            }
        });

        txtDescripcionDeposito.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtDescripcionDeposito.setEnabled(false);
        txtDescripcionDeposito.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtDescripcionDeposito.setPrompt("Descripción o nombre del depósito...");
        txtDescripcionDeposito.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtDescripcionDepositoActionPerformed(evt);
            }
        });
        txtDescripcionDeposito.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtDescripcionDepositoKeyTyped(evt);
            }
        });

        jLabel13.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel13.setText("Proveedor:");

        txtCodigoProveedor.setBackground(new java.awt.Color(0, 102, 102));
        txtCodigoProveedor.setForeground(new java.awt.Color(255, 255, 255));
        txtCodigoProveedor.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtCodigoProveedor.setEnabled(false);
        txtCodigoProveedor.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtCodigoProveedor.setPrompt("Cód. Prov.");
        txtCodigoProveedor.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtCodigoProveedorKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCodigoProveedorKeyTyped(evt);
            }
        });

        txtDescripcionProveedor.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtDescripcionProveedor.setEnabled(false);
        txtDescripcionProveedor.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtDescripcionProveedor.setPrompt("Descripción o nombre del proveedor...");
        txtDescripcionProveedor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtDescripcionProveedorActionPerformed(evt);
            }
        });
        txtDescripcionProveedor.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtDescripcionProveedorKeyTyped(evt);
            }
        });

        jLabel14.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel14.setText("Usuario:");

        txtCodigoUsuario.setBackground(new java.awt.Color(0, 102, 102));
        txtCodigoUsuario.setForeground(new java.awt.Color(255, 255, 255));
        txtCodigoUsuario.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtCodigoUsuario.setEnabled(false);
        txtCodigoUsuario.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtCodigoUsuario.setPrompt("Cód. Usua.");
        txtCodigoUsuario.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtCodigoUsuarioKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCodigoUsuarioKeyTyped(evt);
            }
        });

        txtDescripcionUsuario.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtDescripcionUsuario.setEnabled(false);
        txtDescripcionUsuario.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtDescripcionUsuario.setPrompt("Descripción o nombre del usuario...");
        txtDescripcionUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtDescripcionUsuarioActionPerformed(evt);
            }
        });
        txtDescripcionUsuario.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtDescripcionUsuarioKeyTyped(evt);
            }
        });

        jLabel15.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel15.setText("Monto Neto:");

        txtTotalNeto.setBackground(new java.awt.Color(0, 102, 102));
        txtTotalNeto.setForeground(new java.awt.Color(255, 255, 255));
        txtTotalNeto.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        txtTotalNeto.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtTotalNeto.setEnabled(false);
        txtTotalNeto.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtTotalNeto.setPrompt("Monto Neto...");
        txtTotalNeto.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtTotalNetoKeyTyped(evt);
            }
        });

        jLabel16.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel16.setText("Monto Iva:");

        txtTotalIva.setBackground(new java.awt.Color(0, 102, 102));
        txtTotalIva.setForeground(new java.awt.Color(255, 255, 255));
        txtTotalIva.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        txtTotalIva.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtTotalIva.setEnabled(false);
        txtTotalIva.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtTotalIva.setPrompt("Monto Iva...");
        txtTotalIva.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtTotalIvaActionPerformed(evt);
            }
        });
        txtTotalIva.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtTotalIvaKeyTyped(evt);
            }
        });

        jLabel21.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel21.setText("Monto Total:");

        txtMontoTotal.setBackground(new java.awt.Color(0, 102, 102));
        txtMontoTotal.setForeground(new java.awt.Color(255, 255, 255));
        txtMontoTotal.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        txtMontoTotal.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtMontoTotal.setEnabled(false);
        txtMontoTotal.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtMontoTotal.setPrompt("Monto Total...");
        txtMontoTotal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtMontoTotalActionPerformed(evt);
            }
        });
        txtMontoTotal.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtMontoTotalKeyTyped(evt);
            }
        });

        jLabel17.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        jLabel17.setText("Cuenta:");

        txtCodigoCuenta.setBackground(new java.awt.Color(0, 102, 102));
        txtCodigoCuenta.setForeground(new java.awt.Color(255, 255, 255));
        txtCodigoCuenta.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtCodigoCuenta.setEnabled(false);
        txtCodigoCuenta.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtCodigoCuenta.setPrompt("Cód. Cue.");
        txtCodigoCuenta.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtCodigoCuentaKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCodigoCuentaKeyTyped(evt);
            }
        });

        txtDescripcionCuenta.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        txtDescripcionCuenta.setEnabled(false);
        txtDescripcionCuenta.setFont(new java.awt.Font("SansSerif", 1, 12)); // NOI18N
        txtDescripcionCuenta.setPrompt("Descripción o nombre de la cuenta...");

        btnCancelar.setBackground(new java.awt.Color(255, 204, 204));
        btnCancelar.setFont(new java.awt.Font("SansSerif", 0, 11)); // NOI18N
        btnCancelar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/icons8_cancel_16px.png"))); // NOI18N
        btnCancelar.setText("Cancelar");
        btnCancelar.setOpaque(false);
        btnCancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(jLabel7, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 111, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(txtCodigoTipoMovimiento, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtDescripcionTipoMovimiento, javax.swing.GroupLayout.DEFAULT_SIZE, 389, Short.MAX_VALUE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(btnBuscar))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addGroup(jPanel2Layout.createSequentialGroup()
                                        .addComponent(jLabel9)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtFecha, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(jPanel2Layout.createSequentialGroup()
                                            .addComponent(txtEstablecimiento, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(txtPuntoEmision, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(txtNumero, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(txtComprobante, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addComponent(txtTimbrado, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(0, 0, Short.MAX_VALUE))))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtObservacionVenta, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(jLabel17, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel15, javax.swing.GroupLayout.DEFAULT_SIZE, 111, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(txtTotalNeto, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jLabel16)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtTotalIva, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(61, 61, 61)
                                .addComponent(jLabel21)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtMontoTotal, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(txtCodigoCuenta, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtDescripcionCuenta, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnCancelar, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtCodigoVenta, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel12, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtCodigoDeposito, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtCodigoMoneda, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel14, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtCodigoUsuario, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtCodigoProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtDescripcionUsuario, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtDescripcionProveedor, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtDescripcionDeposito, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtDescripcionMoneda, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtCodigoTipoMovimiento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtDescripcionTipoMovimiento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnBuscar))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtEstablecimiento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtPuntoEmision, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtNumero, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtComprobante, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtTimbrado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtCodigoVenta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtFecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtObservacionVenta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel11)
                    .addComponent(txtCodigoMoneda, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtDescripcionMoneda, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel12)
                    .addComponent(txtCodigoDeposito, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtDescripcionDeposito, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel13)
                    .addComponent(txtCodigoProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtDescripcionProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel14)
                    .addComponent(txtCodigoUsuario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtDescripcionUsuario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtTotalNeto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel15)
                    .addComponent(txtTotalIva, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel16)
                    .addComponent(txtMontoTotal, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel21))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel17)
                    .addComponent(txtCodigoCuenta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtDescripcionCuenta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnCancelar)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, 0)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtCodigoTipoMovimientoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCodigoTipoMovimientoActionPerformed
        if (txtCodigoTipoMovimiento.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "NO PUEDE DEJAR EL CAMPO DE TIPO DE MOVIMIENTO VACIO", "ADVERTENCIA", JOptionPane.WARNING_MESSAGE);
        } else {
            int idtipomovimiento = Integer.parseInt(txtCodigoTipoMovimiento.getText());
            tm.setIdtipomovimiento(idtipomovimiento);
            boolean resultado = daoTipoMovimiento.consultarDatosFacturaVentas(tm);
            if (resultado == true) {
                txtDescripcionTipoMovimiento.setText(tm.getDescripcion());
                btnBuscar.grabFocus();
            } else {
                txtCodigoTipoMovimiento.setText(null);
                txtDescripcionTipoMovimiento.setText(null);
                txtCodigoTipoMovimiento.grabFocus();
            }
        }
    }//GEN-LAST:event_txtCodigoTipoMovimientoActionPerformed

    private void txtCodigoTipoMovimientoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoTipoMovimientoKeyPressed
        if (evt.VK_F1 == evt.getKeyCode()) {
            buscarTipoMovimiento();
        }
    }//GEN-LAST:event_txtCodigoTipoMovimientoKeyPressed

    private void txtCodigoTipoMovimientoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoTipoMovimientoKeyTyped
        char c = evt.getKeyChar();
        if (Character.isLetter(c)) {
            getToolkit().beep();
            evt.consume();
        }
        if (txtCodigoTipoMovimiento.getText().length() == 10) {
            evt.consume();
        }
    }//GEN-LAST:event_txtCodigoTipoMovimientoKeyTyped

    private void txtDescripcionTipoMovimientoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtDescripcionTipoMovimientoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionTipoMovimientoActionPerformed

    private void txtDescripcionTipoMovimientoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtDescripcionTipoMovimientoKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionTipoMovimientoKeyTyped

    private void txtCriterioTipoMovimientoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCriterioTipoMovimientoActionPerformed
        cargarTipoMovimiento();
    }//GEN-LAST:event_txtCriterioTipoMovimientoActionPerformed

    private void txtCriterioTipoMovimientoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCriterioTipoMovimientoKeyPressed
        if (evt.VK_ESCAPE == evt.getKeyCode()) {
            txtCodigoTipoMovimiento.setText(null);
            txtDescripcionTipoMovimiento.setText(null);
            txtCodigoTipoMovimiento.grabFocus();
            BuscadorTipoMovimiento.dispose();
        }
    }//GEN-LAST:event_txtCriterioTipoMovimientoKeyPressed

    private void txtCriterioTipoMovimientoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCriterioTipoMovimientoKeyTyped
        char c = evt.getKeyChar();
        if (Character.isLowerCase(c)) {
            evt.setKeyChar(Character.toUpperCase(c));
        }
        if (txtCriterioTipoMovimiento.getText().length() == 100) {
            evt.consume();
        }
    }//GEN-LAST:event_txtCriterioTipoMovimientoKeyTyped

    private void tablaDatosTipoMovimientoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tablaDatosTipoMovimientoMouseClicked
        if (evt.getClickCount() == 2) {
            if (tablaDatosTipoMovimiento.getSelectedRowCount() == 0) {
                JOptionPane.showMessageDialog(null, "SELECCIONE UNA FILA");
            } else {
                txtCriterioTipoMovimiento.setText(null);
                BuscadorTipoMovimiento.dispose();
            }
        }
    }//GEN-LAST:event_tablaDatosTipoMovimientoMouseClicked

    private void btnBuscarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBuscarActionPerformed
        if (txtCodigoTipoMovimiento.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "NO HA SELECCIONADO UN TIPO DE MOVIMIENTO", "ADVERTENCIA", JOptionPane.WARNING_MESSAGE);
        } else {
            buscarVentas();
        }
    }//GEN-LAST:event_btnBuscarActionPerformed

    private void txtCriterioComprasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCriterioComprasActionPerformed
        cargarVentas();
    }//GEN-LAST:event_txtCriterioComprasActionPerformed

    private void txtCriterioComprasKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCriterioComprasKeyPressed
        if (evt.VK_ESCAPE == evt.getKeyCode()) {
            txtEstablecimiento.setText(null);
            txtPuntoEmision.setText(null);
            txtNumero.setText(null);
            txtComprobante.setText(null);
            txtTimbrado.setText(null);
            txtCodigoVenta.setText(null);
            txtFecha.setText(null);
            txtObservacionVenta.setText(null);
            txtCodigoMoneda.setText(null);
            txtDescripcionMoneda.setText(null);
            txtCodigoDeposito.setText(null);
            txtDescripcionDeposito.setText(null);
            txtCodigoProveedor.setText(null);
            txtDescripcionProveedor.setText(null);
            txtCodigoUsuario.setText(null);
            txtDescripcionUsuario.setText(null);
            txtTotalNeto.setText(null);
            txtTotalIva.setText(null);
            txtCodigoCuenta.setText(null);
            txtDescripcionCuenta.setText(null);
            btnBuscar.grabFocus();
            BuscadorVentas.dispose();
        }
    }//GEN-LAST:event_txtCriterioComprasKeyPressed

    private void txtCriterioComprasKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCriterioComprasKeyTyped
        char c = evt.getKeyChar();
        if (Character.isLowerCase(c)) {
            evt.setKeyChar(Character.toUpperCase(c));
        }
        if (txtCriterioCompras.getText().length() == 100) {
            evt.consume();
        }
    }//GEN-LAST:event_txtCriterioComprasKeyTyped

    private void tablaDatosVentasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tablaDatosVentasMouseClicked
        if (evt.getClickCount() == 2) {
            if (tablaDatosVentas.getSelectedRowCount() == 0) {
                JOptionPane.showMessageDialog(null, "SELECCIONE UNA FILA");
            } else {
                txtCriterioCompras.setText(null);
                BuscadorVentas.dispose();
            }
        }
    }//GEN-LAST:event_tablaDatosVentasMouseClicked

    private void txtEstablecimientoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtEstablecimientoActionPerformed
        if (txtEstablecimiento.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "NO PUEDE DEJAR EL CAMPO VACIO", "ADVERTENCIA", JOptionPane.WARNING_MESSAGE);
        } else {
            Establecimiento = Integer.parseInt(txtEstablecimiento.getText());
            txtEstablecimiento.setText(String.format(tres_ceros, Integer.parseInt(txtEstablecimiento.getText())));
            //txtPuntoEmision.grabFocus();
        }
    }//GEN-LAST:event_txtEstablecimientoActionPerformed

    private void txtEstablecimientoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtEstablecimientoKeyTyped
        char c = evt.getKeyChar();
        if (Character.isLetter(c)) {
            getToolkit().beep();
            evt.consume();
        }
        if (txtEstablecimiento.getText().length() == 3) {
            evt.consume();
        }
    }//GEN-LAST:event_txtEstablecimientoKeyTyped

    private void txtPuntoEmisionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtPuntoEmisionActionPerformed
        if (txtPuntoEmision.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "NO PUEDE DEJAR EL CAMPO VACIO", "ADVERTENCIA", JOptionPane.WARNING_MESSAGE);
        } else {
            txtPuntoEmision.setText(String.format(tres_ceros, Integer.parseInt(txtPuntoEmision.getText())));
            //txtNumero.grabFocus();
        }
    }//GEN-LAST:event_txtPuntoEmisionActionPerformed

    private void txtPuntoEmisionKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtPuntoEmisionKeyTyped
        char c = evt.getKeyChar();
        if (Character.isLetter(c)) {
            getToolkit().beep();
            evt.consume();
        }
        if (txtPuntoEmision.getText().length() == 3) {
            evt.consume();
        }
    }//GEN-LAST:event_txtPuntoEmisionKeyTyped

    private void txtNumeroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtNumeroActionPerformed
        if (txtNumero.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "NO PUEDE DEJAR EL CAMPO VACIO", "ADVERTENCIA", JOptionPane.WARNING_MESSAGE);
        } else {
            txtNumero.setText(String.format(siete_ceros, Integer.parseInt(txtNumero.getText())));
            txtComprobante.setText(txtEstablecimiento.getText() + "-" + txtPuntoEmision.getText() + "-" + txtNumero.getText());
            //txtTimbrado.grabFocus();
        }
    }//GEN-LAST:event_txtNumeroActionPerformed

    private void txtNumeroKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtNumeroKeyTyped
        char c = evt.getKeyChar();
        if (Character.isLetter(c)) {
            getToolkit().beep();
            evt.consume();
        }
        if (txtNumero.getText().length() == 7) {
            evt.consume();
        }
    }//GEN-LAST:event_txtNumeroKeyTyped

    private void txtTimbradoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtTimbradoActionPerformed
        if (txtTimbrado.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "NO PUEDE DEJAR EL CAMPO DE TIMBRADO VACIO.", "ATENCIÓN", JOptionPane.WARNING_MESSAGE);
        } else {
            if (txtTimbrado.getText().length() < 8) {
                int respuesta = JOptionPane.showConfirmDialog(null, "¿ESTA SEGURO DEL TIMBRADO INGRESADO?",
                        "ADVERTENCIA", JOptionPane.YES_NO_OPTION);
                if (respuesta != 1) {
                    //txtCodigoMoneda.grabFocus();
                }
            } else {
                //txtCodigoMoneda.grabFocus();
            }
        }
    }//GEN-LAST:event_txtTimbradoActionPerformed

    private void txtTimbradoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtTimbradoKeyTyped
        char c = evt.getKeyChar();
        if (Character.isLetter(c)) {
            getToolkit().beep();
            evt.consume();
        }
        if (txtTimbrado.getText().length() == 8) {
            evt.consume();
        }
    }//GEN-LAST:event_txtTimbradoKeyTyped

    private void txtCodigoVentaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCodigoVentaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoVentaActionPerformed

    private void txtCodigoVentaKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoVentaKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoVentaKeyTyped

    private void txtFechaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtFechaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtFechaActionPerformed

    private void txtFechaKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtFechaKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtFechaKeyTyped

    private void txtObservacionVentaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtObservacionVentaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtObservacionVentaActionPerformed

    private void txtObservacionVentaKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtObservacionVentaKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtObservacionVentaKeyTyped

    private void txtCodigoMonedaKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoMonedaKeyPressed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoMonedaKeyPressed

    private void txtCodigoMonedaKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoMonedaKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoMonedaKeyTyped

    private void txtDescripcionMonedaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtDescripcionMonedaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionMonedaActionPerformed

    private void txtDescripcionMonedaKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtDescripcionMonedaKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionMonedaKeyTyped

    private void txtCodigoDepositoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoDepositoKeyPressed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoDepositoKeyPressed

    private void txtCodigoDepositoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoDepositoKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoDepositoKeyTyped

    private void txtDescripcionDepositoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtDescripcionDepositoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionDepositoActionPerformed

    private void txtDescripcionDepositoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtDescripcionDepositoKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionDepositoKeyTyped

    private void txtCodigoProveedorKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoProveedorKeyPressed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoProveedorKeyPressed

    private void txtCodigoProveedorKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoProveedorKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoProveedorKeyTyped

    private void txtDescripcionProveedorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtDescripcionProveedorActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionProveedorActionPerformed

    private void txtDescripcionProveedorKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtDescripcionProveedorKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionProveedorKeyTyped

    private void txtCodigoUsuarioKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoUsuarioKeyPressed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoUsuarioKeyPressed

    private void txtCodigoUsuarioKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoUsuarioKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoUsuarioKeyTyped

    private void txtDescripcionUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtDescripcionUsuarioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionUsuarioActionPerformed

    private void txtDescripcionUsuarioKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtDescripcionUsuarioKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionUsuarioKeyTyped

    private void txtTotalNetoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtTotalNetoKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtTotalNetoKeyTyped

    private void txtTotalIvaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtTotalIvaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtTotalIvaActionPerformed

    private void txtTotalIvaKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtTotalIvaKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtTotalIvaKeyTyped

    private void txtMontoTotalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtMontoTotalActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtMontoTotalActionPerformed

    private void txtMontoTotalKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtMontoTotalKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtMontoTotalKeyTyped

    private void txtCodigoCuentaKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoCuentaKeyPressed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoCuentaKeyPressed

    private void txtCodigoCuentaKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCodigoCuentaKeyTyped
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCodigoCuentaKeyTyped

    private void btnCancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarActionPerformed
        int res = JOptionPane.showConfirmDialog(null, "¿ESTA SEGURO DE CANCELAR LOS CAMBIOS?", "ADVERTENCIA", JOptionPane.YES_NO_OPTION);
        if (res != 1) {
            limpiarCampos();
        }
    }//GEN-LAST:event_btnCancelarActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JDialog BuscadorTipoMovimiento;
    private javax.swing.JDialog BuscadorVentas;
    private javax.swing.JButton btnBuscar;
    private javax.swing.JButton btnCancelar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JTable tablaDatosTipoMovimiento;
    private javax.swing.JTable tablaDatosVentas;
    private org.jdesktop.swingx.JXTextField txtCodigoCuenta;
    private org.jdesktop.swingx.JXTextField txtCodigoDeposito;
    private org.jdesktop.swingx.JXTextField txtCodigoMoneda;
    private org.jdesktop.swingx.JXTextField txtCodigoProveedor;
    private org.jdesktop.swingx.JXTextField txtCodigoTipoMovimiento;
    private org.jdesktop.swingx.JXTextField txtCodigoUsuario;
    private org.jdesktop.swingx.JXTextField txtCodigoVenta;
    private org.jdesktop.swingx.JXTextField txtComprobante;
    private org.jdesktop.swingx.JXTextField txtCriterioCompras;
    private org.jdesktop.swingx.JXTextField txtCriterioTipoMovimiento;
    private org.jdesktop.swingx.JXTextField txtDescripcionCuenta;
    private org.jdesktop.swingx.JXTextField txtDescripcionDeposito;
    private org.jdesktop.swingx.JXTextField txtDescripcionMoneda;
    private org.jdesktop.swingx.JXTextField txtDescripcionProveedor;
    private org.jdesktop.swingx.JXTextField txtDescripcionTipoMovimiento;
    private org.jdesktop.swingx.JXTextField txtDescripcionUsuario;
    private org.jdesktop.swingx.JXTextField txtEstablecimiento;
    private org.jdesktop.swingx.JXTextField txtFecha;
    private org.jdesktop.swingx.JXTextField txtMontoTotal;
    private org.jdesktop.swingx.JXTextField txtNumero;
    private org.jdesktop.swingx.JXTextField txtObservacionVenta;
    private org.jdesktop.swingx.JXTextField txtPuntoEmision;
    private org.jdesktop.swingx.JXTextField txtTimbrado;
    private org.jdesktop.swingx.JXTextField txtTotalIva;
    private org.jdesktop.swingx.JXTextField txtTotalNeto;
    // End of variables declaration//GEN-END:variables
}
