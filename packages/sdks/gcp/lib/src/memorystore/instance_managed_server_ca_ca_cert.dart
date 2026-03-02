// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceManagedServerCaCaCert {
  /// (Output)
  /// The certificates that form the CA chain, from leaf to root order
  final pulumi.Input<List<String>>? certificates;

  /// Creates a new [InstanceManagedServerCaCaCert].
  /// [certificates] (Output)
  InstanceManagedServerCaCaCert({
    this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
    };
  }

  factory InstanceManagedServerCaCaCert.fromMap(Map<String, dynamic> map) {
    return InstanceManagedServerCaCaCert(
      certificates: map['certificates'] == null ? null : ((map['certificates']! as List).cast<String>()).input(),
    );
  }
}

