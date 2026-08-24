// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spectrum_application_filter.dart';

/// {@template pulumi_index_get_spectrum_application_get_spectrum_application_args_doc}
/// Arguments for getSpectrumApplication.
/// {@endtemplate}
/// {@macro pulumi_index_get_spectrum_application_get_spectrum_application_args_doc}
class GetSpectrumApplicationArgs {
  /// App identifier.
  final pulumi.Input<String?>? appId;
  final pulumi.Input<GetSpectrumApplicationFilter?>? filter;
  /// Zone identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetSpectrumApplicationArgs].
  /// [appId] App identifier.
  /// [filter] Optional.
  /// [zoneId] Zone identifier.
  const GetSpectrumApplicationArgs({
    this.appId,
    this.filter,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetSpectrumApplicationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetSpectrumApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetSpectrumApplicationArgs(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetSpectrumApplicationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
