object dm: Tdm
  OldCreateOrder = False
  Height = 387
  Width = 460
  object db: TFDConnection
    Params.Strings = (
      'Database=C:\LAHI\capacitacion\caja\db\caja.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 64
  end
  object q_empleado: TFDQuery
    Connection = db
    SQL.Strings = (
      'select * from empleado;')
    Left = 352
    Top = 80
    object q_empleadoid_empleadoi: TIntegerField
      FieldName = 'id_empleadoi'
      Origin = 'id_empleadoi'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_empleadonombre_empleado: TStringField
      FieldName = 'nombre_empleado'
      Origin = 'nombre_empleado'
      Required = True
      Size = 50
    end
    object q_empleadoap_empleado: TStringField
      FieldName = 'ap_empleado'
      Origin = 'ap_empleado'
      Required = True
      Size = 50
    end
    object q_empleadoam_empleado: TStringField
      FieldName = 'am_empleado'
      Origin = 'am_empleado'
      Required = True
      Size = 50
    end
    object q_empleadoid_horario: TIntegerField
      FieldName = 'id_horario'
      Origin = 'id_horario'
      Required = True
    end
  end
  object q_producto: TFDQuery
    Connection = db
    SQL.Strings = (
      'select * from producto;')
    Left = 80
    Top = 112
    object q_productoid_producto: TIntegerField
      FieldName = 'id_producto'
      Origin = 'id_producto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_productonombre_producto: TStringField
      FieldName = 'nombre_producto'
      Origin = 'nombre_producto'
      Required = True
      Size = 40
    end
    object q_productoprecio_producto: TFloatField
      FieldName = 'precio_producto'
      Origin = 'precio_producto'
      Required = True
    end
  end
  object q_horario: TFDQuery
    Connection = db
    SQL.Strings = (
      'select * from horariocaja;')
    Left = 288
    Top = 200
    object q_horarioid_horario_caja: TIntegerField
      FieldName = 'id_horario_caja'
      Origin = 'id_horario_caja'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_horariohora_entrada: TTimeField
      FieldName = 'hora_entrada'
      Origin = 'hora_entrada'
      Required = True
    end
    object q_horariohora_salida: TTimeField
      FieldName = 'hora_salida'
      Origin = 'hora_salida'
      Required = True
    end
  end
  object q_cliente: TFDQuery
    Connection = db
    SQL.Strings = (
      'select * from cliente;')
    Left = 112
    Top = 256
    object q_clienteid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_clientenombre_cliente: TStringField
      FieldName = 'nombre_cliente'
      Origin = 'nombre_cliente'
      Size = 70
    end
    object q_clientetarjeta_cliente: TLargeintField
      FieldName = 'tarjeta_cliente'
      Origin = 'tarjeta_cliente'
    end
    object q_clienteadeudo_cliente: TFloatField
      FieldName = 'adeudo_cliente'
      Origin = 'adeudo_cliente'
    end
  end
end
