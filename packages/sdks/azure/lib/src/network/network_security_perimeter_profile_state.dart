// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkSecurityPerimeterProfile resources.
class NetworkSecurityPerimeterProfileState {
  /// The name which should be used for this Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Profile to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Network Security Perimeter within this Profile is created. Changing this forces a new Network Security Perimeter Profile to be created.
  final pulumi.Input<String>? networkSecurityPerimeterId;

  /// Creates a new [NetworkSecurityPerimeterProfileState].
  /// [name] The name which should be used for this Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Profile to be created.
  /// [networkSecurityPerimeterId] The ID of the Network Security Perimeter within this Profile is created. Changing this forces a new Network Security Perimeter Profile to be created.
  const NetworkSecurityPerimeterProfileState({
    this.name,
    this.networkSecurityPerimeterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'networkSecurityPerimeterId': ?networkSecurityPerimeterId,
    };
  }

  factory NetworkSecurityPerimeterProfileState.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterProfileState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityPerimeterId: (() { final guardedValue = map['networkSecurityPerimeterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

