// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_hostname_filter.dart';

/// {@template pulumi_index_get_custom_hostname_get_custom_hostname_args_doc}
/// Arguments for getCustomHostname.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_hostname_get_custom_hostname_args_doc}
class GetCustomHostnameArgs {
  /// Identifier.
  final pulumi.Input<String?>? customHostnameId;
  final pulumi.Input<GetCustomHostnameFilter?>? filter;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomHostnameArgs].
  /// [customHostnameId] Identifier.
  /// [filter] Optional.
  /// [zoneId] Identifier.
  const GetCustomHostnameArgs({
    this.customHostnameId,
    this.filter,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHostnameId': ?customHostnameId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetCustomHostnameFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomHostnameArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnameArgs(
      customHostnameId: (() { final guardedValue = map['customHostnameId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetCustomHostnameFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
