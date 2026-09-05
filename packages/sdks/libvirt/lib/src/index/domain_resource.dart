// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_resource_fibre_channel.dart';

class DomainResource {
  /// Configures the Fibre Channel resource settings for the domain.
  final pulumi.Input<DomainResourceFibreChannel?>? fibreChannel;
  /// Defines the partition resource settings for the domain.
  final pulumi.Input<String?>? partition;

  /// Creates a new [DomainResource].
  /// [fibreChannel] Configures the Fibre Channel resource settings for the domain.
  /// [partition] Defines the partition resource settings for the domain.
  const DomainResource({
    this.fibreChannel,
    this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fibreChannel': ?pulumi.Input.mapOptionalInputValue<DomainResourceFibreChannel, Map<String, dynamic>>(fibreChannel, (value) => value.toMap()),
      'partition': ?partition,
    };
  }

  factory DomainResource.fromMap(Map<String, dynamic> map) {
    return DomainResource(
      fibreChannel: (() { final guardedValue = map['fibreChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainResourceFibreChannel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
