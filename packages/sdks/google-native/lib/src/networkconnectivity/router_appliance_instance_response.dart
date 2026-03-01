// ignore_for_file: unused_element, unnecessary_cast


/// A router appliance instance is a Compute Engine virtual machine (VM) instance that acts as a BGP speaker. A router appliance instance is specified by the URI of the VM and the internal IP address of one of the VM's network interfaces.
class RouterApplianceInstanceResponse {
  /// The IP address on the VM to use for peering.
  final String ipAddress;
  /// The URI of the VM.
  final String virtualMachine;

  /// Creates a new [RouterApplianceInstanceResponse].
  /// [ipAddress] The IP address on the VM to use for peering.
  /// [virtualMachine] The URI of the VM.
  RouterApplianceInstanceResponse({
    required this.ipAddress,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'virtualMachine': virtualMachine,
    };
  }

  factory RouterApplianceInstanceResponse.fromMap(Map<String, dynamic> map) {
    return RouterApplianceInstanceResponse(
      ipAddress: map['ipAddress'] as String,
      virtualMachine: map['virtualMachine'] as String,
    );
  }
}

