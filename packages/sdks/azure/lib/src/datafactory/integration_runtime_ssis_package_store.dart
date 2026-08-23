// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationRuntimeSsisPackageStore {
  /// Name of the Linked Service to associate with the packages.
  final pulumi.Input<String> linkedServiceName;
  /// Name of the package store.
  final pulumi.Input<String> name;

  /// Creates a new [IntegrationRuntimeSsisPackageStore].
  /// [linkedServiceName] Name of the Linked Service to associate with the packages.
  /// [name] Name of the package store.
  const IntegrationRuntimeSsisPackageStore({
    required this.linkedServiceName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'name': name,
    };
  }

  factory IntegrationRuntimeSsisPackageStore.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisPackageStore(
      linkedServiceName: pulumi.Input.fromValue(map['linkedServiceName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
