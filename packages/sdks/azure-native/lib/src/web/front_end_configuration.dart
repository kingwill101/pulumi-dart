// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'front_end_service_type.dart';

class FrontEndConfiguration {
  final pulumi.Input<FrontEndServiceType>? kind;

  /// Creates a new [FrontEndConfiguration].
  /// [kind] Optional.
  FrontEndConfiguration({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?pulumi.Input.mapOptionalInputValue<FrontEndServiceType, String>(kind, (value) => value.value),
    };
  }

  factory FrontEndConfiguration.fromMap(Map<String, dynamic> map) {
    return FrontEndConfiguration(
      kind: map['kind'] == null ? null : (FrontEndServiceType.fromValue(map['kind'] as String)).input(),
    );
  }
}

