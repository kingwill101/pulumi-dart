// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_firmware_info_feature.dart';

class DomainOsFirmwareInfo {
  /// Lists the optional features supported by the firmware.
  final pulumi.Input<List<DomainOsFirmwareInfoFeature>>? features;

  /// Creates a new [DomainOsFirmwareInfo].
  /// [features] Lists the optional features supported by the firmware.
  DomainOsFirmwareInfo({
    this.features,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?pulumi.Input.mapOptionalInputValue<List<DomainOsFirmwareInfoFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<DomainOsFirmwareInfoFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainOsFirmwareInfo.fromMap(Map<String, dynamic> map) {
    return DomainOsFirmwareInfo(
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainOsFirmwareInfoFeature>(guardedValue, (value) => DomainOsFirmwareInfoFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

