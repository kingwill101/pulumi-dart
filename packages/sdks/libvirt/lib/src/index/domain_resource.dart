// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_resource_fibre_channel.dart';

class DomainResource {
  /// Configures the Fibre Channel resource settings for the domain.
  final pulumi.Input<DomainResourceFibreChannel>? fibreChannel;
  /// Defines the partition resource settings for the domain.
  final pulumi.Input<String>? partition;

  /// Creates a new [DomainResource].
  /// [fibreChannel] Configures the Fibre Channel resource settings for the domain.
  /// [partition] Defines the partition resource settings for the domain.
  DomainResource({
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
      fibreChannel: map['fibreChannel'] == null ? null : (DomainResourceFibreChannel.fromMap((map['fibreChannel'] as Map).cast<String, dynamic>())).input(),
      partition: map['partition'] == null ? null : (map['partition'] as String).input(),
    );
  }
}

