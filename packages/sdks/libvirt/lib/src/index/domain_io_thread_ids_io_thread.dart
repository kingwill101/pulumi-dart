// ignore_for_file: unused_element, unnecessary_cast

import 'domain_io_thread_ids_io_thread_poll.dart';

class DomainIoThreadIDsIoThread {
  /// Sets the identifier for a specific I/O thread in the domain.
  final double? id;
  /// Configures whether polling is enabled for a specific I/O thread.
  final DomainIoThreadIDsIoThreadPoll? poll;
  /// Configures the maximum number of I/O threads for the domain.
  final double? poolMax;
  /// Configures the minimum number of I/O threads for the domain.
  final double? poolMin;

  /// Creates a new [DomainIoThreadIDsIoThread].
  /// [id] Sets the identifier for a specific I/O thread in the domain.
  /// [poll] Configures whether polling is enabled for a specific I/O thread.
  /// [poolMax] Configures the maximum number of I/O threads for the domain.
  /// [poolMin] Configures the minimum number of I/O threads for the domain.
  DomainIoThreadIDsIoThread({
    this.id,
    this.poll,
    this.poolMax,
    this.poolMin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'poll': ?poll == null ? null : poll!.toMap(),
      'poolMax': ?poolMax,
      'poolMin': ?poolMin,
    };
  }

  factory DomainIoThreadIDsIoThread.fromMap(Map<String, dynamic> map) {
    return DomainIoThreadIDsIoThread(
      id: map['id'] == null ? null : map['id'] as double,
      poll: map['poll'] == null ? null : DomainIoThreadIDsIoThreadPoll.fromMap((map['poll'] as Map).cast<String, dynamic>()),
      poolMax: map['poolMax'] == null ? null : map['poolMax'] as double,
      poolMin: map['poolMin'] == null ? null : map['poolMin'] as double,
    );
  }
}

