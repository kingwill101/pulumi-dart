// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_reservations_source_pipe_sec_label.dart';

class DomainOsNvRamSourceReservationsSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;

  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainOsNvRamSourceReservationsSourcePipeSecLabel>>?
  secLabels;

  /// Creates a new [DomainOsNvRamSourceReservationsSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainOsNvRamSourceReservationsSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainOsNvRamSourceReservationsSourcePipeSecLabel>,
            List<Map<String, dynamic>>
          >(
            secLabels,
            (value) =>
                pulumi.Input.encodeList<
                  DomainOsNvRamSourceReservationsSourcePipeSecLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainOsNvRamSourceReservationsSourcePipe.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainOsNvRamSourceReservationsSourcePipe(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() {
        final guardedValue = map['secLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DomainOsNvRamSourceReservationsSourcePipeSecLabel
          >(
            guardedValue,
            (value) =>
                DomainOsNvRamSourceReservationsSourcePipeSecLabel.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
