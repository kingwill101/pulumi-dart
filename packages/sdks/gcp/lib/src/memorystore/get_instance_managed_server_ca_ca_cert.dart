// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceManagedServerCaCaCert {
  /// The certificates that form the CA chain, from leaf to root order
  final pulumi.Input<List<String>> certificates;

  /// Creates a new [GetInstanceManagedServerCaCaCert].
  /// [certificates] The certificates that form the CA chain, from leaf to root order
  const GetInstanceManagedServerCaCaCert({
    required this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': certificates,
    };
  }

  factory GetInstanceManagedServerCaCaCert.fromMap(Map<String, dynamic> map) {
    return GetInstanceManagedServerCaCaCert(
      certificates: pulumi.Input.fromValue((map['certificates'] as List).cast<String>()),
    );
  }
}

