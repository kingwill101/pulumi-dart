// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsAcpiTable {
  /// Defines the path to the ACPI table file that is loaded into the guest, specifying the resource location.
  final pulumi.Input<String> path;

  /// Sets the type attribute for the ACPI table, defining its format and characteristics.
  final pulumi.Input<String> type;

  /// Creates a new [DomainOsAcpiTable].
  /// [path] Defines the path to the ACPI table file that is loaded into the guest, specifying the resource location.
  /// [type] Sets the type attribute for the ACPI table, defining its format and characteristics.
  DomainOsAcpiTable({required this.path, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'type': type};
  }

  factory DomainOsAcpiTable.fromMap(Map<String, dynamic> map) {
    return DomainOsAcpiTable(
      path: pulumi.Input.fromValue(map['path'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
