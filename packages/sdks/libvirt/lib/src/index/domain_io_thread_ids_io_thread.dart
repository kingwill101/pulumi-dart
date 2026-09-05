// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_io_thread_ids_io_thread_poll.dart';

class DomainIoThreadIDsIoThread {
  /// Sets the identifier for a specific I/O thread in the domain.
  final pulumi.Input<double> id;
  /// Configures whether polling is enabled for a specific I/O thread.
  final pulumi.Input<DomainIoThreadIDsIoThreadPoll?>? poll;
  /// Configures the maximum number of I/O threads for the domain.
  final pulumi.Input<double?>? poolMax;
  /// Configures the minimum number of I/O threads for the domain.
  final pulumi.Input<double?>? poolMin;

  /// Creates a new [DomainIoThreadIDsIoThread].
  /// [id] Sets the identifier for a specific I/O thread in the domain.
  /// [poll] Configures whether polling is enabled for a specific I/O thread.
  /// [poolMax] Configures the maximum number of I/O threads for the domain.
  /// [poolMin] Configures the minimum number of I/O threads for the domain.
  const DomainIoThreadIDsIoThread({
    required this.id,
    this.poll,
    this.poolMax,
    this.poolMin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'poll': ?pulumi.Input.mapOptionalInputValue<DomainIoThreadIDsIoThreadPoll, Map<String, dynamic>>(poll, (value) => value.toMap()),
      'poolMax': ?poolMax,
      'poolMin': ?poolMin,
    };
  }

  factory DomainIoThreadIDsIoThread.fromMap(Map<String, dynamic> map) {
    return DomainIoThreadIDsIoThread(
      id: pulumi.Input.fromValue((map['id'] as num).toDouble()),
      poll: (() { final guardedValue = map['poll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainIoThreadIDsIoThreadPoll.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      poolMax: (() { final guardedValue = map['poolMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      poolMin: (() { final guardedValue = map['poolMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
