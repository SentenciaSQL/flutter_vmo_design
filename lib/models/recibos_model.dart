class Recibo {
    Recibo({
        this.esTitular,
        this.nroRecibo,
        this.fechaEmision,
        this.fechaVencimiento,
        this.importe,
        this.importeDesc,
        this.showImprimirFactura,
    });

    bool esTitular;
    String nroRecibo;
    String fechaEmision;
    String fechaVencimiento;
    double importe;
    String importeDesc;
    bool showImprimirFactura;

    factory Recibo.fromJson(Map<String, dynamic> json) => Recibo(
        esTitular: json["EsTitular"],
        nroRecibo: json["NroRecibo"],
        fechaEmision: json["FechaEmision"],
        fechaVencimiento: json["FechaVencimiento"],
        importe: json["Importe"].toDouble(),
        importeDesc: json["ImporteDesc"],
        showImprimirFactura: json["ShowImprimirFactura"],
    );

    Map<String, dynamic> toJson() => {
        "EsTitular": esTitular,
        "NroRecibo": nroRecibo,
        "FechaEmision": fechaEmision,
        "FechaVencimiento": fechaVencimiento,
        "Importe": importe,
        "ImporteDesc": importeDesc,
        "ShowImprimirFactura": showImprimirFactura,
    };
}