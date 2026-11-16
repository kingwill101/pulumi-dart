// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_binding_outbound.dart';
import 'worker_version_binding_simple.dart';

class WorkerVersionBinding {
  /// For `type: secretKey`: Algorithm-specific key parameters. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
  final pulumi.Input<String?>? algorithm;
  /// For `type: sendEmail`: List of allowed destination addresses.
  final pulumi.Input<List<String>?>? allowedDestinationAddresses;
  /// For `type: sendEmail`: List of allowed sender addresses.
  final pulumi.Input<List<String>?>? allowedSenderAddresses;
  /// For `type: flagship`: ID of the Flagship app to bind to for feature flag evaluation.
  final pulumi.Input<String?>? appId;
  /// For `type: r2Bucket`: R2 bucket to bind to.
  final pulumi.Input<String?>? bucketName;
  /// For `type: mtlsCertificate`: Identifier of the certificate to bind to.
  final pulumi.Input<String?>? certificateId;
  /// For `type: durableObjectNamespace`: The exported class name of the Durable Object.
  ///
  /// For `type: workflow`: Class name of the Workflow. Should only be provided if the Workflow belongs to this script.
  final pulumi.Input<String?>? className;
  /// For `type: d1`: Identifier of the D1 database to bind to.
  final pulumi.Input<String?>? databaseId;
  /// For `type: analyticsEngine`: The name of the dataset to bind to.
  final pulumi.Input<String?>? dataset;
  /// For `type: sendEmail`: Destination address for the email.
  final pulumi.Input<String?>? destinationAddress;
  /// For `type: durableObjectNamespace`: The dispatch namespace the Durable Object script belongs to.
  final pulumi.Input<String?>? dispatchNamespace;
  /// For `type: service`: Entrypoint to invoke on the target Worker.
  final pulumi.Input<String?>? entrypoint;
  /// For `type: durableObjectNamespace`: The environment of the scriptName to bind to.
  ///
  /// For `type: service`: Optional environment if the Worker utilizes one.
  final pulumi.Input<String?>? environment;
  /// For `type: secretKey`: Data format of the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
  /// Available values: "raw", "pkcs8", "spki", "jwk".
  final pulumi.Input<String?>? format;
  /// For `type: d1`: Identifier of the D1 database to bind to.
  ///
  /// For `type: hyperdrive`: Identifier of the Hyperdrive connection to bind to.
  final pulumi.Input<String?>? id;
  /// For `type: vpcNetwork`: Enables Gateway identity for the binding. Requires networkId to be "cf1:network" and cannot be combined with tunnelId or an explicit "cf1:vnet:&lt;UUID&gt;" network_id.
  /// Available values: "runtime-email-alpha".
  final pulumi.Input<String?>? identity;
  /// For `type: vectorize`: Name of the Vectorize index to bind to.
  final pulumi.Input<String?>? indexName;
  /// For `type: aiSearch`: The user-chosen instance name. Must exist at deploy time. The worker can search, chat, update, and manage items/jobs on this instance.
  final pulumi.Input<String?>? instanceName;
  /// For `type: json`: JSON data to use.
  final pulumi.Input<String?>? json;
  /// For `type: r2Bucket`: The [jurisdiction](https://developers.cloudflare.com/r2/reference/data-location/#jurisdictional-restrictions) of the R2 bucket.
  /// Available values: "eu", "fedramp", "fedramp-high", "us".
  final pulumi.Input<String?>? jurisdiction;
  /// For `type: secretKey`: Base64-encoded key data. Required if `format` is "raw", "pkcs8", or "spki".
  final pulumi.Input<String?>? keyBase64;
  /// For `type: secretKey`: Key data in [JSON Web Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key) format. Required if `format` is "jwk".
  final pulumi.Input<String?>? keyJwk;
  /// For `type: ai` or `type: aiSearch` or `type: aiSearchNamespace` or `type: messaging` or `type: analyticsEngine` or `type: artifacts` or `type: assets` or `type: browser` or `type: d1` or `type: dataBlob` or `type: dispatchNamespace` or `type: durableObjectNamespace` or `type: hyperdrive` or `type: images` or `type: json` or `type: kvNamespace` or `type: media` or `type: mtlsCertificate` or `type: plainText` or `type: pipelines` or `type: k2` or `type: queue` or `type: ratelimit` or `type: r2Bucket` or `type: secretText` or `type: sendEmail` or `type: service` or `type: textBlob` or `type: vectorize` or `type: versionMetadata` or `type: secretsStoreSecret` or `type: flagship` or `type: secretKey` or `type: workflow` or `type: wasmModule` or `type: vpcService` or `type: vpcNetwork` or `type: workerLoader`: A JavaScript variable name for the binding.
  final pulumi.Input<String> name;
  /// For `type: aiSearch`: The namespace the instance belongs to. Defaults to "default" if omitted. Customers who don't use namespaces can simply omit this field.
  ///
  /// For `type: aiSearchNamespace`: The user-chosen namespace name. Must exist before deploy -- Wrangler handles auto-creation on deploy failure (R2 bucket pattern). The "default" namespace is auto-created by config-api for new accounts. Grants full access (CRUD + search + chat) to all instances within the namespace.
  ///
  /// For `type: messaging`: The Messaging namespace to bind to.
  ///
  /// For `type: artifacts`: The Artifacts namespace exposed to the Worker in the Worker's account. Must be 2-63 characters, start with an ASCII alphanumeric character, contain only ASCII alphanumeric characters, dots, underscores, and hyphens, and must not end with a hyphen. The namespace does not need to be created before binding it.
  ///
  /// For `type: dispatchNamespace`: The name of the dispatch namespace.
  final pulumi.Input<String?>? namespace;
  /// For `type: durableObjectNamespace` or `type: kvNamespace`: Namespace identifier tag.
  ///
  /// For `type: ratelimit`: Identifier of the rate limit namespace to bind to.
  final pulumi.Input<String?>? namespaceId;
  /// For `type: vpcNetwork`: Identifier of the network to bind to. Use "cf1:network" to select the account's default virtual network at runtime, or "cf1:vnet:&lt;UUID&gt;" to select an explicit virtual network in the Worker's account. Mutually exclusive with tunnel_id.
  final pulumi.Input<String?>? networkId;
  /// For `type: inherit`: The old name of the inherited binding. If set, the binding will be renamed from `oldName` to `name` in the new version. If not set, the binding will keep the same name between versions.
  final pulumi.Input<String?>? oldName;
  /// For `type: dispatchNamespace`: Outbound worker.
  final pulumi.Input<WorkerVersionBindingOutbound?>? outbound;
  /// For `type: dataBlob`: The name of the file containing the data content. Only accepted for `service worker syntax` Workers.
  ///
  /// For `type: textBlob`: The name of the file containing the text content. Only accepted for `service worker syntax` Workers.
  ///
  /// For `type: wasmModule`: The name of the file containing the WebAssembly module content. Only accepted for `service worker syntax` Workers.
  final pulumi.Input<String?>? part;
  /// For `type: pipelines`: Name of the Pipeline to bind to.
  final pulumi.Input<String?>? pipeline;
  /// For `type: queue`: Name of the Queue to bind to.
  final pulumi.Input<String?>? queueName;
  /// For `type: durableObjectNamespace`: The script where the Durable Object is defined, if it is external to this Worker.
  ///
  /// For `type: workflow`: Script name that contains the Workflow. If not provided, defaults to this script name.
  final pulumi.Input<String?>? scriptName;
  /// For `type: secretsStoreSecret`: Name of the secret in the store.
  final pulumi.Input<String?>? secretName;
  /// For `type: service`: Name of Worker to bind to.
  final pulumi.Input<String?>? service;
  /// For `type: vpcService`: Identifier of the VPC service to bind to.
  final pulumi.Input<String?>? serviceId;
  /// For `type: ratelimit`: The rate limit configuration.
  final pulumi.Input<WorkerVersionBindingSimple?>? simple;
  /// For `type: secretsStoreSecret`: ID of the store containing the secret.
  final pulumi.Input<String?>? storeId;
  /// For `type: k2`: ID of a K2 stream owned by the account deploying the Worker.
  final pulumi.Input<String?>? stream;
  /// For `type: plainText`: The text value to use.
  ///
  /// For `type: secretText`: The secret value to use.
  final pulumi.Input<String?>? text;
  /// For `type: vpcNetwork`: UUID of the Cloudflare Tunnel to bind to. Mutually exclusive with network_id.
  final pulumi.Input<String?>? tunnelId;
  /// The kind of resource that the binding provides.
  /// Available values: "ai", "aiSearch", "aiSearchNamespace", "messaging", "analyticsEngine", "artifacts", "assets", "browser", "d1", "dataBlob", "dispatchNamespace", "durableObjectNamespace", "hyperdrive", "inherit", "images", "json", "kvNamespace", "media", "mtlsCertificate", "plainText", "pipelines", "k2", "queue", "ratelimit", "r2Bucket", "secretText", "sendEmail", "service", "textBlob", "vectorize", "versionMetadata", "secretsStoreSecret", "flagship", "secretKey", "workflow", "wasmModule", "vpcService", "vpcNetwork", "workerLoader".
  final pulumi.Input<String> type;
  /// For `type: secretKey`: Allowed operations with the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
  final pulumi.Input<List<String>?>? usages;
  /// For `type: inherit`: Identifier for the version to inherit the binding from. This can be a version ID, or the literal "latest" to inherit from the most recently uploaded version, which may not be the deployed version. Defaults to "latest". Only the Workers API version endpoints under `/accounts/{account_id}/workers/workers/{worker_id}/versions` accept a version ID. Other endpoints, including script upload and script version upload, accept only "latest" and reject a version ID with error 10057.
  final pulumi.Input<String?>? versionId;
  /// For `type: workflow`: Name of the Workflow to bind to.
  final pulumi.Input<String?>? workflowName;

  /// Creates a new [WorkerVersionBinding].
  /// [algorithm] For `type: secretKey`: Algorithm-specific key parameters. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
  /// [allowedDestinationAddresses] For `type: sendEmail`: List of allowed destination addresses.
  /// [allowedSenderAddresses] For `type: sendEmail`: List of allowed sender addresses.
  /// [appId] For `type: flagship`: ID of the Flagship app to bind to for feature flag evaluation.
  /// [bucketName] For `type: r2Bucket`: R2 bucket to bind to.
  /// [certificateId] For `type: mtlsCertificate`: Identifier of the certificate to bind to.
  /// [className] For `type: durableObjectNamespace`: The exported class name of the Durable Object.
  /// [databaseId] For `type: d1`: Identifier of the D1 database to bind to.
  /// [dataset] For `type: analyticsEngine`: The name of the dataset to bind to.
  /// [destinationAddress] For `type: sendEmail`: Destination address for the email.
  /// [dispatchNamespace] For `type: durableObjectNamespace`: The dispatch namespace the Durable Object script belongs to.
  /// [entrypoint] For `type: service`: Entrypoint to invoke on the target Worker.
  /// [environment] For `type: durableObjectNamespace`: The environment of the scriptName to bind to.
  /// [format] For `type: secretKey`: Data format of the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
  /// [id] For `type: d1`: Identifier of the D1 database to bind to.
  /// [identity] For `type: vpcNetwork`: Enables Gateway identity for the binding. Requires networkId to be "cf1:network" and cannot be combined with tunnelId or an explicit "cf1:vnet:&lt;UUID&gt;" network_id.
  /// [indexName] For `type: vectorize`: Name of the Vectorize index to bind to.
  /// [instanceName] For `type: aiSearch`: The user-chosen instance name. Must exist at deploy time. The worker can search, chat, update, and manage items/jobs on this instance.
  /// [json] For `type: json`: JSON data to use.
  /// [jurisdiction] For `type: r2Bucket`: The [jurisdiction](https://developers.cloudflare.com/r2/reference/data-location/#jurisdictional-restrictions) of the R2 bucket.
  /// [keyBase64] For `type: secretKey`: Base64-encoded key data. Required if `format` is "raw", "pkcs8", or "spki".
  /// [keyJwk] For `type: secretKey`: Key data in [JSON Web Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key) format. Required if `format` is "jwk".
  /// [name] For `type: ai` or `type: aiSearch` or `type: aiSearchNamespace` or `type: messaging` or `type: analyticsEngine` or `type: artifacts` or `type: assets` or `type: browser` or `type: d1` or `type: dataBlob` or `type: dispatchNamespace` or `type: durableObjectNamespace` or `type: hyperdrive` or `type: images` or `type: json` or `type: kvNamespace` or `type: media` or `type: mtlsCertificate` or `type: plainText` or `type: pipelines` or `type: k2` or `type: queue` or `type: ratelimit` or `type: r2Bucket` or `type: secretText` or `type: sendEmail` or `type: service` or `type: textBlob` or `type: vectorize` or `type: versionMetadata` or `type: secretsStoreSecret` or `type: flagship` or `type: secretKey` or `type: workflow` or `type: wasmModule` or `type: vpcService` or `type: vpcNetwork` or `type: workerLoader`: A JavaScript variable name for the binding.
  /// [namespace] For `type: aiSearch`: The namespace the instance belongs to. Defaults to "default" if omitted. Customers who don't use namespaces can simply omit this field.
  /// [namespaceId] For `type: durableObjectNamespace` or `type: kvNamespace`: Namespace identifier tag.
  /// [networkId] For `type: vpcNetwork`: Identifier of the network to bind to. Use "cf1:network" to select the account's default virtual network at runtime, or "cf1:vnet:&lt;UUID&gt;" to select an explicit virtual network in the Worker's account. Mutually exclusive with tunnel_id.
  /// [oldName] For `type: inherit`: The old name of the inherited binding. If set, the binding will be renamed from `oldName` to `name` in the new version. If not set, the binding will keep the same name between versions.
  /// [outbound] For `type: dispatchNamespace`: Outbound worker.
  /// [part] For `type: dataBlob`: The name of the file containing the data content. Only accepted for `service worker syntax` Workers.
  /// [pipeline] For `type: pipelines`: Name of the Pipeline to bind to.
  /// [queueName] For `type: queue`: Name of the Queue to bind to.
  /// [scriptName] For `type: durableObjectNamespace`: The script where the Durable Object is defined, if it is external to this Worker.
  /// [secretName] For `type: secretsStoreSecret`: Name of the secret in the store.
  /// [service] For `type: service`: Name of Worker to bind to.
  /// [serviceId] For `type: vpcService`: Identifier of the VPC service to bind to.
  /// [simple] For `type: ratelimit`: The rate limit configuration.
  /// [storeId] For `type: secretsStoreSecret`: ID of the store containing the secret.
  /// [stream] For `type: k2`: ID of a K2 stream owned by the account deploying the Worker.
  /// [text] For `type: plainText`: The text value to use.
  /// [tunnelId] For `type: vpcNetwork`: UUID of the Cloudflare Tunnel to bind to. Mutually exclusive with network_id.
  /// [type] The kind of resource that the binding provides.
  /// [usages] For `type: secretKey`: Allowed operations with the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
  /// [versionId] For `type: inherit`: Identifier for the version to inherit the binding from. This can be a version ID, or the literal "latest" to inherit from the most recently uploaded version, which may not be the deployed version. Defaults to "latest". Only the Workers API version endpoints under `/accounts/{account_id}/workers/workers/{worker_id}/versions` accept a version ID. Other endpoints, including script upload and script version upload, accept only "latest" and reject a version ID with error 10057.
  /// [workflowName] For `type: workflow`: Name of the Workflow to bind to.
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
    this.identity,
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
    this.stream,
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
      'identity': ?identity,
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
      'stream': ?stream,
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
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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
      stream: (() { final guardedValue = map['stream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      usages: (() { final guardedValue = map['usages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowName: (() { final guardedValue = map['workflowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
