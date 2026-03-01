// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountSettings.
class GetAccountSettingsResult {
  /// Account-wide backups default.
  final bool backupsEnabled;
  final String id;
  /// Type of interfaces for new Linode instances.
  final String interfacesForNewLinodes;
  /// The Longview Pro tier you are currently subscribed to.
  final String longviewSubscription;
  /// The default maintenance policy for this account. (**Note: v4beta only.**)
  final String maintenancePolicy;
  /// Enables monitoring for connectivity, response, and total request time.
  final bool managed;
  /// Enables network helper across all users by default for new Linodes and Linode Configs.
  final bool networkHelper;
  /// A string describing the status of this account’s Object Storage service enrollment.
  final String objectStorage;

  /// Creates a new [GetAccountSettingsResult].
  /// [backupsEnabled] Account-wide backups default.
  /// [id] Required.
  /// [interfacesForNewLinodes] Type of interfaces for new Linode instances.
  /// [longviewSubscription] The Longview Pro tier you are currently subscribed to.
  /// [maintenancePolicy] The default maintenance policy for this account. (**Note: v4beta only.**)
  /// [managed] Enables monitoring for connectivity, response, and total request time.
  /// [networkHelper] Enables network helper across all users by default for new Linodes and Linode Configs.
  /// [objectStorage] A string describing the status of this account’s Object Storage service enrollment.
  GetAccountSettingsResult({
    required this.backupsEnabled,
    required this.id,
    required this.interfacesForNewLinodes,
    required this.longviewSubscription,
    required this.maintenancePolicy,
    required this.managed,
    required this.networkHelper,
    required this.objectStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupsEnabled': backupsEnabled,
      'id': id,
      'interfacesForNewLinodes': interfacesForNewLinodes,
      'longviewSubscription': longviewSubscription,
      'maintenancePolicy': maintenancePolicy,
      'managed': managed,
      'networkHelper': networkHelper,
      'objectStorage': objectStorage,
    };
  }

  factory GetAccountSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountSettingsResult(
      backupsEnabled: map['backupsEnabled'] as bool,
      id: map['id'] as String,
      interfacesForNewLinodes: map['interfacesForNewLinodes'] as String,
      longviewSubscription: map['longviewSubscription'] as String,
      maintenancePolicy: map['maintenancePolicy'] as String,
      managed: map['managed'] as bool,
      networkHelper: map['networkHelper'] as bool,
      objectStorage: map['objectStorage'] as String,
    );
  }
}

