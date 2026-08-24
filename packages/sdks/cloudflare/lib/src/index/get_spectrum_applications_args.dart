// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_spectrum_applications_get_spectrum_applications_args_doc}
/// Arguments for getSpectrumApplications.
/// {@endtemplate}
/// {@macro pulumi_index_get_spectrum_applications_get_spectrum_applications_args_doc}
class GetSpectrumApplicationsArgs {
  /// Sets the direction by which results are ordered.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Application field by which results are ordered.
  /// Available values: "protocol", "app*id", "created*on", "modifiedOn", "dns".
  final pulumi.Input<String?>? order;
  /// Zone identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetSpectrumApplicationsArgs].
  /// [direction] Sets the direction by which results are ordered.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Application field by which results are ordered.
  /// [zoneId] Zone identifier.
  const GetSpectrumApplicationsArgs({
    this.direction,
    this.maxItems,
    this.order,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'zoneId': ?zoneId,
    };
  }

  factory GetSpectrumApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return GetSpectrumApplicationsArgs(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
