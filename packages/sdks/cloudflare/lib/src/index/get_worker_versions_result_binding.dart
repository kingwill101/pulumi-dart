// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_versions_result_binding_outbound.dart';
import 'get_worker_versions_result_binding_simple.dart';

class GetWorkerVersionsResultBinding {
  /// Algorithm-specific key parameters. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
  final pulumi.Input<String> algorithm;
  /// List of allowed destination addresses.
  final pulumi.Input<List<String>> allowedDestinationAddresses;
  /// List of allowed sender addresses.
  final pulumi.Input<List<String>> allowedSenderAddresses;
  /// ID of the Flagship app to bind to for feature flag evaluation.
  final pulumi.Input<String> appId;
  /// R2 bucket to bind to.
  final pulumi.Input<String> bucketName;
  /// Identifier of the certificate to bind to.
  final pulumi.Input<String> certificateId;
  /// The exported class name of the Durable Object.
  final pulumi.Input<String> className;
  /// Identifier of the D1 database to bind to.
  final pulumi.Input<String> databaseId;
  /// The name of the dataset to bind to.
  final pulumi.Input<String> dataset;
  /// Destination address for the email.
  final pulumi.Input<String> destinationAddress;
  /// The dispatch namespace the Durable Object script belongs to.
  final pulumi.Input<String> dispatchNamespace;
  /// Entrypoint to invoke on the target Worker.
  final pulumi.Input<String> entrypoint;
  /// The environment of the scriptName to bind to.
  final pulumi.Input<String> environment;
  /// Data format of the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
  /// Available values: "raw", "pkcs8", "spki", "jwk".
  final pulumi.Input<String> format;
  /// Identifier of the D1 database to bind to.
  final pulumi.Input<String> id;
  /// Name of the Vectorize index to bind to.
  final pulumi.Input<String> indexName;
  /// The user-chosen instance name. Must exist at deploy time. The worker can search, chat, update, and manage items/jobs on this instance.
  final pulumi.Input<String> instanceName;
  /// JSON data to use.
  final pulumi.Input<String> json;
  /// The [jurisdiction](https://developers.cloudflare.com/r2/reference/data-location/#jurisdictional-restrictions) of the R2 bucket.
  /// Available values: "eu", "fedramp", "fedramp-high".
  final pulumi.Input<String> jurisdiction;
  /// Base64-encoded key data. Required if `format` is "raw", "pkcs8", or "spki".
  final pulumi.Input<String> keyBase64;
  /// Key data in [JSON Web Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key) format. Required if `format` is "jwk".
  final pulumi.Input<String> keyJwk;
  /// A JavaScript variable name for the binding.
  final pulumi.Input<String> name;
  /// The namespace the instance belongs to. Defaults to "default" if omitted. Customers who don't use namespaces can simply omit this field.
  final pulumi.Input<String> namespace;
  /// Namespace identifier tag.
  final pulumi.Input<String> namespaceId;
  /// Identifier of the network to bind to. Only "cf1:network" is currently supported. Mutually exclusive with tunnel_id.
  final pulumi.Input<String> networkId;
  /// The old name of the inherited binding. If set, the binding will be renamed from `oldName` to `name` in the new version. If not set, the binding will keep the same name between versions.
  final pulumi.Input<String> oldName;
  /// Outbound worker.
  final pulumi.Input<GetWorkerVersionsResultBindingOutbound> outbound;
  /// The name of the file containing the data content. Only accepted for `service worker syntax` Workers.
  final pulumi.Input<String> part;
  /// Name of the Pipeline to bind to.
  final pulumi.Input<String> pipeline;
  /// Name of the Queue to bind to.
  final pulumi.Input<String> queueName;
  /// The script where the Durable Object is defined, if it is external to this Worker.
  final pulumi.Input<String> scriptName;
  /// Name of the secret in the store.
  final pulumi.Input<String> secretName;
  /// Name of Worker to bind to.
  final pulumi.Input<String> service;
  /// Identifier of the VPC service to bind to.
  final pulumi.Input<String> serviceId;
  /// The rate limit configuration.
  final pulumi.Input<GetWorkerVersionsResultBindingSimple> simple;
  /// ID of the store containing the secret.
  final pulumi.Input<String> storeId;
  /// The text value to use.
  final pulumi.Input<String> text;
  /// UUID of the Cloudflare Tunnel to bind to. Mutually exclusive with network_id.
  final pulumi.Input<String> tunnelId;
  /// The kind of resource that the binding provides.
  /// Available values: "ai", "ai*search", "ai*search*namespace", "messaging", "analytics*engine", "assets", "browser", "d1", "data*blob", "dispatch*namespace", "durable*object*namespace", "hyperdrive", "inherit", "images", "json", "kv*namespace", "media", "mtls*certificate", "plain*text", "pipelines", "queue", "ratelimit", "r2*bucket", "secret*text", "send*email", "service", "text*blob", "vectorize", "version*metadata", "secrets*store*secret", "flagship", "secret*key", "workflow", "wasm*module", "vpc*service", "vpc*network".
  final pulumi.Input<String> type;
  /// Allowed operations with the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
  final pulumi.Input<List<String>> usages;
  /// Identifier for the version to inherit the binding from, which can be the version ID or the literal "latest" to inherit from the latest version. Defaults to inheriting the binding from the latest version.
  final pulumi.Input<String> versionId;
  /// Name of the Workflow to bind to.
  final pulumi.Input<String> workflowName;

  /// Creates a new [GetWorkerVersionsResultBinding].
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
  const GetWorkerVersionsResultBinding({
    required this.algorithm,
    required this.allowedDestinationAddresses,
    required this.allowedSenderAddresses,
    required this.appId,
    required this.bucketName,
    required this.certificateId,
    required this.className,
    required this.databaseId,
    required this.dataset,
    required this.destinationAddress,
    required this.dispatchNamespace,
    required this.entrypoint,
    required this.environment,
    required this.format,
    required this.id,
    required this.indexName,
    required this.instanceName,
    required this.json,
    required this.jurisdiction,
    required this.keyBase64,
    required this.keyJwk,
    required this.name,
    required this.namespace,
    required this.namespaceId,
    required this.networkId,
    required this.oldName,
    required this.outbound,
    required this.part,
    required this.pipeline,
    required this.queueName,
    required this.scriptName,
    required this.secretName,
    required this.service,
    required this.serviceId,
    required this.simple,
    required this.storeId,
    required this.text,
    required this.tunnelId,
    required this.type,
    required this.usages,
    required this.versionId,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'allowedDestinationAddresses': allowedDestinationAddresses,
      'allowedSenderAddresses': allowedSenderAddresses,
      'appId': appId,
      'bucketName': bucketName,
      'certificateId': certificateId,
      'className': className,
      'databaseId': databaseId,
      'dataset': dataset,
      'destinationAddress': destinationAddress,
      'dispatchNamespace': dispatchNamespace,
      'entrypoint': entrypoint,
      'environment': environment,
      'format': format,
      'id': id,
      'indexName': indexName,
      'instanceName': instanceName,
      'json': json,
      'jurisdiction': jurisdiction,
      'keyBase64': keyBase64,
      'keyJwk': keyJwk,
      'name': name,
      'namespace': namespace,
      'namespaceId': namespaceId,
      'networkId': networkId,
      'oldName': oldName,
      'outbound': pulumi.Input.mapInputValue<GetWorkerVersionsResultBindingOutbound, Map<String, dynamic>>(outbound, (value) => value.toMap()),
      'part': part,
      'pipeline': pipeline,
      'queueName': queueName,
      'scriptName': scriptName,
      'secretName': secretName,
      'service': service,
      'serviceId': serviceId,
      'simple': pulumi.Input.mapInputValue<GetWorkerVersionsResultBindingSimple, Map<String, dynamic>>(simple, (value) => value.toMap()),
      'storeId': storeId,
      'text': text,
      'tunnelId': tunnelId,
      'type': type,
      'usages': usages,
      'versionId': versionId,
      'workflowName': workflowName,
    };
  }

  factory GetWorkerVersionsResultBinding.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultBinding(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      allowedDestinationAddresses: pulumi.Input.fromValue((map['allowedDestinationAddresses'] as List).cast<String>()),
      allowedSenderAddresses: pulumi.Input.fromValue((map['allowedSenderAddresses'] as List).cast<String>()),
      appId: pulumi.Input.fromValue(map['appId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      className: pulumi.Input.fromValue(map['className'] as String),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      destinationAddress: pulumi.Input.fromValue(map['destinationAddress'] as String),
      dispatchNamespace: pulumi.Input.fromValue(map['dispatchNamespace'] as String),
      entrypoint: pulumi.Input.fromValue(map['entrypoint'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      json: pulumi.Input.fromValue(map['json'] as String),
      jurisdiction: pulumi.Input.fromValue(map['jurisdiction'] as String),
      keyBase64: pulumi.Input.fromValue(map['keyBase64'] as String),
      keyJwk: pulumi.Input.fromValue(map['keyJwk'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      oldName: pulumi.Input.fromValue(map['oldName'] as String),
      outbound: pulumi.Input.fromValue(GetWorkerVersionsResultBindingOutbound.fromMap((map['outbound']! as Map).cast<String, dynamic>())),
      part: pulumi.Input.fromValue(map['part'] as String),
      pipeline: pulumi.Input.fromValue(map['pipeline'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      simple: pulumi.Input.fromValue(GetWorkerVersionsResultBindingSimple.fromMap((map['simple']! as Map).cast<String, dynamic>())),
      storeId: pulumi.Input.fromValue(map['storeId'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      usages: pulumi.Input.fromValue((map['usages'] as List).cast<String>()),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}
