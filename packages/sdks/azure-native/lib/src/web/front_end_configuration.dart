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
      'kind': ?pulumi.Input.mapOptionalInputValue<FrontEndServiceType, String>(kind, (value) => value.wireValue),
    };
  }

  factory FrontEndConfiguration.fromMap(Map<String, dynamic> map) {
    return FrontEndConfiguration(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontEndServiceType.fromValue(guardedValue as String)); })(),
    );
  }
}

