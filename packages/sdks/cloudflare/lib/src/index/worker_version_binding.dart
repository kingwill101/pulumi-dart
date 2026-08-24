// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_binding_outbound.dart';
import 'worker_version_binding_simple.dart';

class WorkerVersionBinding {
  /// Algorithm-specific key parameters. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
  final pulumi.Input<String?>? algorithm;
  /// List of allowed destination addresses.
  final pulumi.Input<List<String>?>? allowedDestinationAddresses;
  /// List of allowed sender addresses.
  final pulumi.Input<List<String>?>? allowedSenderAddresses;
  /// ID of the Flagship app to bind to for feature flag evaluation.
  final pulumi.Input<String?>? appId;
  /// R2 bucket to bind to.
  final pulumi.Input<String?>? bucketName;
  /// Identifier of the certificate to bind to.
  final pulumi.Input<String?>? certificateId;
  /// The exported class name of the Durable Object.
  final pulumi.Input<String?>? className;
  /// Identifier of the D1 database to bind to.
  final pulumi.Input<String?>? databaseId;
  /// The name of the dataset to bind to.
  final pulumi.Input<String?>? dataset;
  /// Destination address for the email.
  final pulumi.Input<String?>? destinationAddress;
  /// The dispatch namespace the Durable Object script belongs to.
  final pulumi.Input<String?>? dispatchNamespace;
  /// Entrypoint to invoke on the target Worker.
  final pulumi.Input<String?>? entrypoint;
  /// The environment of the scriptName to bind to.
  final pulumi.Input<String?>? environment;
  /// Data format of the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
  /// Available values: "raw", "pkcs8", "spki", "jwk".
  final pulumi.Input<String?>? format;
  /// Identifier of the D1 database to bind to.
  final pulumi.Input<String?>? id;
  /// Name of the Vectorize index to bind to.
  final pulumi.Input<String?>? indexName;
  /// The user-chosen instance name. Must exist at deploy time. The worker can search, chat, update, and manage items/jobs on this instance.
  final pulumi.Input<String?>? instanceName;
  /// JSON data to use.
  final pulumi.Input<String?>? json;
  /// The [jurisdiction](https://developers.cloudflare.com/r2/reference/data-location/#jurisdictional-restrictions) of the R2 bucket.
  /// Available values: "eu", "fedramp", "fedramp-high".
  final pulumi.Input<String?>? jurisdiction;
  /// Base64-encoded key data. Required if `format` is "raw", "pkcs8", or "spki".
  final pulumi.Input<String?>? keyBase64;
  /// Key data in [JSON Web Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key) format. Required if `format` is "jwk".
  final pulumi.Input<String?>? keyJwk;
  /// A JavaScript variable name for the binding.
  final pulumi.Input<String> name;
  /// The namespace the instance belongs to. Defaults to "default" if omitted. Customers who don't use namespaces can simply omit this field.
  final pulumi.Input<String?>? namespace;
  /// Namespace identifier tag.
  final pulumi.Input<String?>? namespaceId;
  /// Identifier of the network to bind to. Only "cf1:network" is currently supported. Mutually exclusive with tunnel_id.
  final pulumi.Input<String?>? networkId;
  /// The old name of the inherited binding. If set, the binding will be renamed from `oldName` to `name` in the new version. If not set, the binding will keep the same name between versions.
  final pulumi.Input<String?>? oldName;
  /// Outbound worker.
  final pulumi.Input<WorkerVersionBindingOutbound?>? outbound;
  /// The name of the file containing the data content. Only accepted for `service worker syntax` Workers.
  final pulumi.Input<String?>? part;
  /// Name of the Pipeline to bind to.
  final pulumi.Input<String?>? pipeline;
  /// Name of the Queue to bind to.
  final pulumi.Input<String?>? queueName;
  /// The script where the Durable Object is defined, if it is external to this Worker.
  final pulumi.Input<String?>? scriptName;
  /// Name of the secret in the store.
  final pulumi.Input<String?>? secretName;
  /// Name of Worker to bind to.
  final pulumi.Input<String?>? service;
  /// Identifier of the VPC service to bind to.
  final pulumi.Input<String?>? serviceId;
  /// The rate limit configuration.
  final pulumi.Input<WorkerVersionBindingSimple?>? simple;
  /// ID of the store containing the secret.
  final pulumi.Input<String?>? storeId;
  /// The text value to use.
  final pulumi.Input<String?>? text;
  /// UUID of the Cloudflare Tunnel to bind to. Mutually exclusive with network_id.
  final pulumi.Input<String?>? tunnelId;
  /// The kind of resource that the binding provides.
  /// Available values: "ai", "ai*search", "ai*search*namespace", "analytics*engine", "assets", "browser", "d1", "data*blob", "dispatch*namespace", "durable*object*namespace", "hyperdrive", "inherit", "images", "json", "kv*namespace", "media", "mtls*certificate", "plain*text", "pipelines", "queue", "ratelimit", "r2*bucket", "secret*text", "send*email", "service", "text*blob", "vectorize", "version*metadata", "secrets*store*secret", "flagship", "secret*key", "workflow", "wasm*module", "vpc*service", "vpc*network".
  final pulumi.Input<String> type;
  /// Allowed operations with the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
  final pulumi.Input<List<String>?>? usages;
  /// Identifier for the version to inherit the binding from, which can be the version ID or the literal "latest" to inherit from the latest version. Defaults to inheriting the binding from the latest version.
  final pulumi.Input<String?>? versionId;
  /// Name of the Workflow to bind to.
  final pulumi.Input<String?>? workflowName;

  /// Creates a new [WorkerVersionBinding].
  /// [algorithm] Algorithm-specific key parameters. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
  /// [allowedDestinationAddresses] List of allowed destination addresses.
  /// [allowedSenderAddresses] List of allowed sender addresses.
  /// [appId] ID of the Flagship app to bind to for feature flag evaluation.
  /// [bucketName] R2 bucket to bind to.
  /// [certificateId] Identifier of the certificate to bind to.
  /// [className] The exported class name of the Durable Object.
  /// [databaseId] Identifier of the D1 database to bind to.
  /// [dataset] The name of the dataset to bind to.
  /// [destinationAddress] Destination address for the email.
  /// [dispatchNamespace] The dispatch namespace the Durable Object script belongs to.
  /// [entrypoint] Entrypoint to invoke on the target Worker.
  /// [environment] The environment of the scriptName to bind to.
  /// [format] Data format of the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
  /// [id] Identifier of the D1 database to bind to.
  /// [indexName] Name of the Vectorize index to bind to.
  /// [instanceName] The user-chosen instance name. Must exist at deploy time. The worker can search, chat, update, and manage items/jobs on this instance.
  /// [json] JSON data to use.
  /// [jurisdiction] The [jurisdiction](https://developers.cloudflare.com/r2/reference/data-location/#jurisdictional-restrictions) of the R2 bucket.
  /// [keyBase64] Base64-encoded key data. Required if `format` is "raw", "pkcs8", or "spki".
  /// [keyJwk] Key data in [JSON Web Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key) format. Required if `format` is "jwk".
  /// [name] A JavaScript variable name for the binding.
  /// [namespace] The namespace the instance belongs to. Defaults to "default" if omitted. Customers who don't use namespaces can simply omit this field.
  /// [namespaceId] Namespace identifier tag.
  /// [networkId] Identifier of the network to bind to. Only "cf1:network" is currently supported. Mutually exclusive with tunnel_id.
  /// [oldName] The old name of the inherited binding. If set, the binding will be renamed from `oldName` to `name` in the new version. If not set, the binding will keep the same name between versions.
  /// [outbound] Outbound worker.
  /// [part] The name of the file containing the data content. Only accepted for `service worker syntax` Workers.
  /// [pipeline] Name of the Pipeline to bind to.
  /// [queueName] Name of the Queue to bind to.
  /// [scriptName] The script where the Durable Object is defined, if it is external to this Worker.
  /// [secretName] Name of the secret in the store.
  /// [service] Name of Worker to bind to.
  /// [serviceId] Identifier of the VPC service to bind to.
  /// [simple] The rate limit configuration.
  /// [storeId] ID of the store containing the secret.
  /// [text] The text value to use.
  /// [tunnelId] UUID of the Cloudflare Tunnel to bind to. Mutually exclusive with network_id.
  /// [type] The kind of resource that the binding provides.
  /// [usages] Allowed operations with the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
  /// [versionId] Identifier for the version to inherit the binding from, which can be the version ID or the literal "latest" to inherit from the latest version. Defaults to inheriting the binding from the latest version.
  /// [workflowName] Name of the Workflow to bind to.
  const WorkerVersionBinding({
    this.algorithm,
    this.allowedDestinationAddresses,
    this.allowedSenderAddresses,
    this.appId,
    this.bucketName,
    this.certificateId,
    this.className,
    this.databaseId,
    this.dataset,
    this.destinationAddress,
    this.dispatchNamespace,
    this.entrypoint,
    this.environment,
    this.format,
    this.id,
    this.indexName,
    this.instanceName,
    this.json,
    this.jurisdiction,
    this.keyBase64,
    this.keyJwk,
    required this.name,
    this.namespace,
    this.namespaceId,
    this.networkId,
    this.oldName,
    this.outbound,
    this.part,
    this.pipeline,
    this.queueName,
    this.scriptName,
    this.secretName,
    this.service,
    this.serviceId,
    this.simple,
    this.storeId,
    this.text,
    this.tunnelId,
    required this.type,
    this.usages,
    this.versionId,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'allowedDestinationAddresses': ?allowedDestinationAddresses,
      'allowedSenderAddresses': ?allowedSenderAddresses,
      'appId': ?appId,
      'bucketName': ?bucketName,
      'certificateId': ?certificateId,
      'className': ?className,
      'databaseId': ?databaseId,
      'dataset': ?dataset,
      'destinationAddress': ?destinationAddress,
      'dispatchNamespace': ?dispatchNamespace,
      'entrypoint': ?entrypoint,
      'environment': ?environment,
      'format': ?format,
      'id': ?id,
      'indexName': ?indexName,
      'instanceName': ?instanceName,
      'json': ?json,
      'jurisdiction': ?jurisdiction,
      'keyBase64': ?keyBase64,
      'keyJwk': ?keyJwk,
      'name': name,
      'namespace': ?namespace,
      'namespaceId': ?namespaceId,
      'networkId': ?networkId,
      'oldName': ?oldName,
      'outbound': ?pulumi.Input.mapOptionalInputValue<WorkerVersionBindingOutbound, Map<String, dynamic>>(outbound, (value) => value.toMap()),
      'part': ?part,
      'pipeline': ?pipeline,
      'queueName': ?queueName,
      'scriptName': ?scriptName,
      'secretName': ?secretName,
      'service': ?service,
      'serviceId': ?serviceId,
      'simple': ?pulumi.Input.mapOptionalInputValue<WorkerVersionBindingSimple, Map<String, dynamic>>(simple, (value) => value.toMap()),
      'storeId': ?storeId,
      'text': ?text,
      'tunnelId': ?tunnelId,
      'type': type,
      'usages': ?usages,
      'versionId': ?versionId,
      'workflowName': ?workflowName,
    };
  }

  factory WorkerVersionBinding.fromMap(Map<String, dynamic> map) {
    return WorkerVersionBinding(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedDestinationAddresses: (() { final guardedValue = map['allowedDestinationAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedSenderAddresses: (() { final guardedValue = map['allowedSenderAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      className: (() { final guardedValue = map['className']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddress: (() { final guardedValue = map['destinationAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dispatchNamespace: (() { final guardedValue = map['dispatchNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexName: (() { final guardedValue = map['indexName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyBase64: (() { final guardedValue = map['keyBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyJwk: (() { final guardedValue = map['keyJwk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oldName: (() { final guardedValue = map['oldName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outbound: (() { final guardedValue = map['outbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionBindingOutbound.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      part: (() { final guardedValue = map['part']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipeline: (() { final guardedValue = map['pipeline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      simple: (() { final guardedValue = map['simple']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionBindingSimple.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storeId: (() { final guardedValue = map['storeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      usages: (() { final guardedValue = map['usages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowName: (() { final guardedValue = map['workflowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
