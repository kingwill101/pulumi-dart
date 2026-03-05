// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHypervisorV2.
class GetHypervisorV2Result {
  /// The amount in GigaBytes of local storage the hypervisor can provide
  final int disk;

  /// The IP address of the Hypervisor
  final String hostIp;

  /// See Argument Reference above.
  final String hostname;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The number in MegaBytes of memory the hypervisor can provide
  final int memory;

  /// See Argument Reference above.
  final String region;

  /// The state of the hypervisor (`up` or `down`)
  final String state;

  /// The status of the hypervisor (`enabled` or `disabled`)
  final String status;

  /// The type of the hypervisor (example: `QEMU`)
  final String type;

  /// The number of virtual CPUs the hypervisor can provide
  final int vcpus;

  /// Creates a new [GetHypervisorV2Result].
  /// [disk] The amount in GigaBytes of local storage the hypervisor can provide
  /// [hostIp] The IP address of the Hypervisor
  /// [hostname] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [memory] The number in MegaBytes of memory the hypervisor can provide
  /// [region] See Argument Reference above.
  /// [state] The state of the hypervisor (`up` or `down`)
  /// [status] The status of the hypervisor (`enabled` or `disabled`)
  /// [type] The type of the hypervisor (example: `QEMU`)
  /// [vcpus] The number of virtual CPUs the hypervisor can provide
  GetHypervisorV2Result({
    required this.disk,
    required this.hostIp,
    required this.hostname,
    required this.id,
    required this.memory,
    required this.region,
    required this.state,
    required this.status,
    required this.type,
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'hostIp': hostIp,
      'hostname': hostname,
      'id': id,
      'memory': memory,
      'region': region,
      'state': state,
      'status': status,
      'type': type,
      'vcpus': vcpus,
    };
  }

  factory GetHypervisorV2Result.fromMap(Map<String, dynamic> map) {
    return GetHypervisorV2Result(
      disk: map['disk'] as int,
      hostIp: map['hostIp'] as String,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      memory: map['memory'] as int,
      region: map['region'] as String,
      state: map['state'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
      vcpus: map['vcpus'] as int,
    );
  }
}
