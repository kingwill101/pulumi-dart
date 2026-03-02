// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesXenE820host {
  /// Sets the state of the e820 host feature, indicating whether it is active or not.
  final pulumi.Input<String> state;

  /// Creates a new [DomainFeaturesXenE820host].
  /// [state] Sets the state of the e820 host feature, indicating whether it is active or not.
  DomainFeaturesXenE820host({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory DomainFeaturesXenE820host.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesXenE820host(
      state: (map['state'] as String).input(),
    );
  }
}

