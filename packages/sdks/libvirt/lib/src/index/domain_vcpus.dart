// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_vcpus_vcpus.dart';

class DomainVcpus {
  /// Represents a single virtual CPU configuration within the domain, allowing for detailed settings per vCPU.
  final pulumi.Input<List<DomainVcpusVcpus>>? vcpus;

  /// Creates a new [DomainVcpus].
  /// [vcpus] Represents a single virtual CPU configuration within the domain, allowing for detailed settings per vCPU.
  DomainVcpus({
    this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vcpus': ?pulumi.Input.mapOptionalInputValue<List<DomainVcpusVcpus>, List<Map<String, dynamic>>>(vcpus, (value) => pulumi.Input.encodeList<DomainVcpusVcpus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainVcpus.fromMap(Map<String, dynamic> map) {
    return DomainVcpus(
      vcpus: map['vcpus'] == null ? null : (pulumi.Input.decodeList<DomainVcpusVcpus>(map['vcpus'], (value) => DomainVcpusVcpus.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

