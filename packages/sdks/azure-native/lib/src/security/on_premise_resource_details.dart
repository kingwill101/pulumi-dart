// ignore_for_file: unused_element, unnecessary_cast


/// Details of the On Premise resource that was assessed
class OnPremiseResourceDetails {
  /// The name of the machine
  final String machineName;
  /// The platform where the assessed resource resides
  /// Expected value is 'OnPremise'.
  final String source;
  /// The oms agent Id installed on the machine
  final String sourceComputerId;
  /// The unique Id of the machine
  final String vmuuid;
  /// Azure resource Id of the workspace the machine is attached to
  final String workspaceId;

  /// Creates a new [OnPremiseResourceDetails].
  /// [machineName] The name of the machine
  /// [source] The platform where the assessed resource resides
  /// [sourceComputerId] The oms agent Id installed on the machine
  /// [vmuuid] The unique Id of the machine
  /// [workspaceId] Azure resource Id of the workspace the machine is attached to
  OnPremiseResourceDetails({
    required this.machineName,
    required this.source,
    required this.sourceComputerId,
    required this.vmuuid,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineName': machineName,
      'source': source,
      'sourceComputerId': sourceComputerId,
      'vmuuid': vmuuid,
      'workspaceId': workspaceId,
    };
  }

  factory OnPremiseResourceDetails.fromMap(Map<String, dynamic> map) {
    return OnPremiseResourceDetails(
      machineName: map['machineName'] as String,
      source: map['source'] as String,
      sourceComputerId: map['sourceComputerId'] as String,
      vmuuid: map['vmuuid'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

