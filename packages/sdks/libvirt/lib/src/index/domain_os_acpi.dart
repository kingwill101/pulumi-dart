// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_acpi_table.dart';

class DomainOsAcpi {
  /// Configures ACPI tables that can be provided to the guest, influencing power management features.
  final pulumi.Input<List<DomainOsAcpiTable>>? tables;

  /// Creates a new [DomainOsAcpi].
  /// [tables] Configures ACPI tables that can be provided to the guest, influencing power management features.
  DomainOsAcpi({this.tables});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tables':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainOsAcpiTable>,
            List<Map<String, dynamic>>
          >(
            tables,
            (value) =>
                pulumi.Input.encodeList<
                  DomainOsAcpiTable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainOsAcpi.fromMap(Map<String, dynamic> map) {
    return DomainOsAcpi(
      tables: (() {
        final guardedValue = map['tables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainOsAcpiTable>(
            guardedValue,
            (value) => DomainOsAcpiTable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
