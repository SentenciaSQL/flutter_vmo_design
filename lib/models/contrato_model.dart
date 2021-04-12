class Contrato {
  final int id;
  final String nic;
  final String nombre;
  final bool estado;
  final String fechaVencimiento;
  final double montoTotal;

  Contrato(this.id, this.nic, this.nombre, this.estado, this.fechaVencimiento, this.montoTotal);
}