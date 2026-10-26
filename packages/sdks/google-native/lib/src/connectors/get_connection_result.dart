// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_response.dart';
import 'config_variable_response.dart';
import 'connection_status_response.dart';
import 'connector_version_infra_config_response.dart';
import 'connectors_log_config_response.dart';
import 'destination_config_response.dart';
import 'eventing_config_response.dart';
import 'eventing_runtime_data_response.dart';
import 'lock_config_response.dart';
import 'node_config_response.dart';
import 'ssl_config_response.dart';

/// Result data returned by getConnection.
class GetConnectionResult {
  /// Optional. Configuration for establishing the connection's authentication with an external system.
  final AuthConfigResponse? authConfig;
  /// Optional. Configuration for configuring the connection with an external system.
  final List<ConfigVariableResponse>? configVariables;
  /// Connection revision. This field is only updated when the connection is created or updated by User.
  final String? connectionRevision;
  /// Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  final String? connectorVersion;
  /// Infra configs supported by Connector Version.
  final ConnectorVersionInfraConfigResponse? connectorVersionInfraConfig;
  /// Flag to mark the version indicating the launch stage.
  final String? connectorVersionLaunchStage;
  /// Created time.
  final String? createTime;
  /// Optional. Description of the resource.
  final String? description;
  /// Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  final List<DestinationConfigResponse>? destinationConfigs;
  /// GCR location where the envoy image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  final String? envoyImageLocation;
  /// Optional. Eventing config of a connection
  final EventingConfigResponse? eventingConfig;
  /// Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  final String? eventingEnablementType;
  /// Eventing Runtime Data.
  final EventingRuntimeDataResponse? eventingRuntimeData;
  /// GCR location where the runtime image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  final String? imageLocation;
  /// Is trusted tester program enabled for the project.
  final bool? isTrustedTester;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String>? labels;
  /// Optional. Configuration that indicates whether or not the Connection can be edited.
  final LockConfigResponse? lockConfig;
  /// Optional. Log configuration for the connection.
  final ConnectorsLogConfigResponse? logConfig;
  /// Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}
  final String? name;
  /// Optional. Node configuration for the connection.
  final NodeConfigResponse? nodeConfig;
  /// Optional. Service account needed for runtime plane to access Google Cloud resources.
  final String? serviceAccount;
  /// The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address. e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  final String? serviceDirectory;
  /// Optional. Ssl config of a connection
  final SslConfigResponse? sslConfig;
  /// Current status of the connection.
  final ConnectionStatusResponse? status;
  /// This subscription type enum states the subscription type of the project.
  final String? subscriptionType;
  /// Optional. Suspended indicates if a user has suspended a connection or not.
  final bool? suspended;
  /// Updated time.
  final String? updateTime;

  /// Creates a new [GetConnectionResult].
  /// [authConfig] Optional. Configuration for establishing the connection's authentication with an external system.
  /// [configVariables] Optional. Configuration for configuring the connection with an external system.
  /// [connectionRevision] Connection revision. This field is only updated when the connection is created or updated by User.
  /// [connectorVersion] Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  /// [connectorVersionInfraConfig] Infra configs supported by Connector Version.
  /// [connectorVersionLaunchStage] Flag to mark the version indicating the launch stage.
  /// [createTime] Created time.
  /// [description] Optional. Description of the resource.
  /// [destinationConfigs] Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  /// [envoyImageLocation] GCR location where the envoy image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  /// [eventingConfig] Optional. Eventing config of a connection
  /// [eventingEnablementType] Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  /// [eventingRuntimeData] Eventing Runtime Data.
  /// [imageLocation] GCR location where the runtime image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  /// [isTrustedTester] Is trusted tester program enabled for the project.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [lockConfig] Optional. Configuration that indicates whether or not the Connection can be edited.
  /// [logConfig] Optional. Log configuration for the connection.
  /// [name] Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}
  /// [nodeConfig] Optional. Node configuration for the connection.
  /// [serviceAccount] Optional. Service account needed for runtime plane to access Google Cloud resources.
  /// [serviceDirectory] The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address. e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  /// [sslConfig] Optional. Ssl config of a connection
  /// [status] Current status of the connection.
  /// [subscriptionType] This subscription type enum states the subscription type of the project.
  /// [suspended] Optional. Suspended indicates if a user has suspended a connection or not.
  /// [updateTime] Updated time.
  const GetConnectionResult({
    this.authConfig,
    this.configVariables,
    this.connectionRevision,
    this.connectorVersion,
    this.connectorVersionInfraConfig,
    this.connectorVersionLaunchStage,
    this.createTime,
    this.description,
    this.destinationConfigs,
    this.envoyImageLocation,
    this.eventingConfig,
    this.eventingEnablementType,
    this.eventingRuntimeData,
    this.imageLocation,
    this.isTrustedTester,
    this.labels,
    this.lockConfig,
    this.logConfig,
    this.name,
    this.nodeConfig,
    this.serviceAccount,
    this.serviceDirectory,
    this.sslConfig,
    this.status,
    this.subscriptionType,
    this.suspended,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?authConfig?.toMap(),
      'configVariables': ?(() { final guardedValue = configVariables; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectionRevision': ?connectionRevision,
      'connectorVersion': ?connectorVersion,
      'connectorVersionInfraConfig': ?connectorVersionInfraConfig?.toMap(),
      'connectorVersionLaunchStage': ?connectorVersionLaunchStage,
      'createTime': ?createTime,
      'description': ?description,
      'destinationConfigs': ?(() { final guardedValue = destinationConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<DestinationConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'envoyImageLocation': ?envoyImageLocation,
      'eventingConfig': ?eventingConfig?.toMap(),
      'eventingEnablementType': ?eventingEnablementType,
      'eventingRuntimeData': ?eventingRuntimeData?.toMap(),
      'imageLocation': ?imageLocation,
      'isTrustedTester': ?isTrustedTester,
      'labels': ?labels,
      'lockConfig': ?lockConfig?.toMap(),
      'logConfig': ?logConfig?.toMap(),
      'name': ?name,
      'nodeConfig': ?nodeConfig?.toMap(),
      'serviceAccount': ?serviceAccount,
      'serviceDirectory': ?serviceDirectory,
      'sslConfig': ?sslConfig?.toMap(),
      'status': ?status?.toMap(),
      'subscriptionType': ?subscriptionType,
      'suspended': ?suspended,
      'updateTime': ?updateTime,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return AuthConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      configVariables: (() { final guardedValue = map['configVariables']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigVariableResponse>(guardedValue, (value) => ConfigVariableResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectionRevision: (() { final guardedValue = map['connectionRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorVersion: (() { final guardedValue = map['connectorVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorVersionInfraConfig: (() { final guardedValue = map['connectorVersionInfraConfig']; if (guardedValue == null) return null; return ConnectorVersionInfraConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      connectorVersionLaunchStage: (() { final guardedValue = map['connectorVersionLaunchStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationConfigs: (() { final guardedValue = map['destinationConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DestinationConfigResponse>(guardedValue, (value) => DestinationConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      envoyImageLocation: (() { final guardedValue = map['envoyImageLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventingConfig: (() { final guardedValue = map['eventingConfig']; if (guardedValue == null) return null; return EventingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      eventingEnablementType: (() { final guardedValue = map['eventingEnablementType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventingRuntimeData: (() { final guardedValue = map['eventingRuntimeData']; if (guardedValue == null) return null; return EventingRuntimeDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      imageLocation: (() { final guardedValue = map['imageLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isTrustedTester: (() { final guardedValue = map['isTrustedTester']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lockConfig: (() { final guardedValue = map['lockConfig']; if (guardedValue == null) return null; return LockConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return ConnectorsLogConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return NodeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceDirectory: (() { final guardedValue = map['serviceDirectory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return SslConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ConnectionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subscriptionType: (() { final guardedValue = map['subscriptionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
