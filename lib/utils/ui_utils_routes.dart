import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:iot_app/config/routes/router.dart';
import 'package:iot_app/core/context/tb_context.dart';
import 'package:iot_app/utils/ui/qr_code_scanner.dart';

class UiUtilsRoutes extends TbRoutes {
  late var qrCodeScannerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return QrCodeScannerPage(tbContext);
  });

  UiUtilsRoutes(TbContext tbContext) : super(tbContext);

  @override
  void doRegisterRoutes(router) {
    router.define("/qrCodeScan", handler: qrCodeScannerHandler);
  }
}
