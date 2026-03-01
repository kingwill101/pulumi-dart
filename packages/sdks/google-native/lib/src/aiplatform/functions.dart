import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_artifact_aiplatform_v1beta1_args.dart';
import 'get_artifact_aiplatform_v1beta1_result.dart';
import 'get_artifact_args.dart';
import 'get_artifact_result.dart';
import 'get_batch_prediction_job_aiplatform_v1beta1_args.dart';
import 'get_batch_prediction_job_aiplatform_v1beta1_result.dart';
import 'get_batch_prediction_job_args.dart';
import 'get_batch_prediction_job_result.dart';
import 'get_context_aiplatform_v1beta1_args.dart';
import 'get_context_aiplatform_v1beta1_result.dart';
import 'get_context_args.dart';
import 'get_context_result.dart';
import 'get_custom_job_aiplatform_v1beta1_args.dart';
import 'get_custom_job_aiplatform_v1beta1_result.dart';
import 'get_custom_job_args.dart';
import 'get_custom_job_result.dart';
import 'get_data_labeling_job_aiplatform_v1beta1_args.dart';
import 'get_data_labeling_job_aiplatform_v1beta1_result.dart';
import 'get_data_labeling_job_args.dart';
import 'get_data_labeling_job_result.dart';
import 'get_dataset_aiplatform_v1beta1_args.dart';
import 'get_dataset_aiplatform_v1beta1_result.dart';
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';
import 'get_dataset_version_aiplatform_v1beta1_args.dart';
import 'get_dataset_version_aiplatform_v1beta1_result.dart';
import 'get_dataset_version_args.dart';
import 'get_dataset_version_result.dart';
import 'get_deployment_resource_pool_aiplatform_v1beta1_args.dart';
import 'get_deployment_resource_pool_aiplatform_v1beta1_result.dart';
import 'get_deployment_resource_pool_args.dart';
import 'get_deployment_resource_pool_result.dart';
import 'get_endpoint_aiplatform_v1beta1_args.dart';
import 'get_endpoint_aiplatform_v1beta1_result.dart';
import 'get_endpoint_args.dart';
import 'get_endpoint_iam_policy_args.dart';
import 'get_endpoint_iam_policy_result.dart';
import 'get_endpoint_result.dart';
import 'get_entity_type_aiplatform_v1beta1_args.dart';
import 'get_entity_type_aiplatform_v1beta1_result.dart';
import 'get_entity_type_args.dart';
import 'get_entity_type_result.dart';
import 'get_execution_aiplatform_v1beta1_args.dart';
import 'get_execution_aiplatform_v1beta1_result.dart';
import 'get_execution_args.dart';
import 'get_execution_result.dart';
import 'get_experiment_aiplatform_v1beta1_args.dart';
import 'get_experiment_aiplatform_v1beta1_result.dart';
import 'get_experiment_args.dart';
import 'get_experiment_result.dart';
import 'get_feature_group_aiplatform_v1beta1_args.dart';
import 'get_feature_group_aiplatform_v1beta1_result.dart';
import 'get_feature_group_args.dart';
import 'get_feature_group_feature_aiplatform_v1beta1_args.dart';
import 'get_feature_group_feature_aiplatform_v1beta1_result.dart';
import 'get_feature_group_feature_args.dart';
import 'get_feature_group_feature_result.dart';
import 'get_feature_group_result.dart';
import 'get_feature_online_store_aiplatform_v1beta1_args.dart';
import 'get_feature_online_store_aiplatform_v1beta1_result.dart';
import 'get_feature_online_store_args.dart';
import 'get_feature_online_store_result.dart';
import 'get_feature_store_feature_aiplatform_v1beta1_args.dart';
import 'get_feature_store_feature_aiplatform_v1beta1_result.dart';
import 'get_feature_store_feature_args.dart';
import 'get_feature_store_feature_result.dart';
import 'get_feature_view_aiplatform_v1beta1_args.dart';
import 'get_feature_view_aiplatform_v1beta1_result.dart';
import 'get_feature_view_args.dart';
import 'get_feature_view_result.dart';
import 'get_featurestore_aiplatform_v1beta1_args.dart';
import 'get_featurestore_aiplatform_v1beta1_result.dart';
import 'get_featurestore_args.dart';
import 'get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_args.dart';
import 'get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_result.dart';
import 'get_featurestore_entity_type_iam_policy_args.dart';
import 'get_featurestore_entity_type_iam_policy_result.dart';
import 'get_featurestore_iam_policy_aiplatform_v1beta1_args.dart';
import 'get_featurestore_iam_policy_aiplatform_v1beta1_result.dart';
import 'get_featurestore_iam_policy_args.dart';
import 'get_featurestore_iam_policy_result.dart';
import 'get_featurestore_result.dart';
import 'get_hyperparameter_tuning_job_aiplatform_v1beta1_args.dart';
import 'get_hyperparameter_tuning_job_aiplatform_v1beta1_result.dart';
import 'get_hyperparameter_tuning_job_args.dart';
import 'get_hyperparameter_tuning_job_result.dart';
import 'get_index_aiplatform_v1beta1_args.dart';
import 'get_index_aiplatform_v1beta1_result.dart';
import 'get_index_args.dart';
import 'get_index_endpoint_aiplatform_v1beta1_args.dart';
import 'get_index_endpoint_aiplatform_v1beta1_result.dart';
import 'get_index_endpoint_args.dart';
import 'get_index_endpoint_result.dart';
import 'get_index_result.dart';
import 'get_metadata_schema_aiplatform_v1beta1_args.dart';
import 'get_metadata_schema_aiplatform_v1beta1_result.dart';
import 'get_metadata_schema_args.dart';
import 'get_metadata_schema_result.dart';
import 'get_metadata_store_aiplatform_v1beta1_args.dart';
import 'get_metadata_store_aiplatform_v1beta1_result.dart';
import 'get_metadata_store_args.dart';
import 'get_metadata_store_result.dart';
import 'get_model_deployment_monitoring_job_aiplatform_v1beta1_args.dart';
import 'get_model_deployment_monitoring_job_aiplatform_v1beta1_result.dart';
import 'get_model_deployment_monitoring_job_args.dart';
import 'get_model_deployment_monitoring_job_result.dart';
import 'get_model_iam_policy_args.dart';
import 'get_model_iam_policy_result.dart';
import 'get_nas_job_aiplatform_v1beta1_args.dart';
import 'get_nas_job_aiplatform_v1beta1_result.dart';
import 'get_nas_job_args.dart';
import 'get_nas_job_result.dart';
import 'get_notebook_runtime_template_aiplatform_v1beta1_args.dart';
import 'get_notebook_runtime_template_aiplatform_v1beta1_result.dart';
import 'get_notebook_runtime_template_args.dart';
import 'get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_args.dart';
import 'get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_result.dart';
import 'get_notebook_runtime_template_iam_policy_args.dart';
import 'get_notebook_runtime_template_iam_policy_result.dart';
import 'get_notebook_runtime_template_result.dart';
import 'get_persistent_resource_args.dart';
import 'get_persistent_resource_result.dart';
import 'get_pipeline_job_aiplatform_v1beta1_args.dart';
import 'get_pipeline_job_aiplatform_v1beta1_result.dart';
import 'get_pipeline_job_args.dart';
import 'get_pipeline_job_result.dart';
import 'get_run_aiplatform_v1beta1_args.dart';
import 'get_run_aiplatform_v1beta1_result.dart';
import 'get_run_args.dart';
import 'get_run_result.dart';
import 'get_schedule_aiplatform_v1beta1_args.dart';
import 'get_schedule_aiplatform_v1beta1_result.dart';
import 'get_schedule_args.dart';
import 'get_schedule_result.dart';
import 'get_specialist_pool_aiplatform_v1beta1_args.dart';
import 'get_specialist_pool_aiplatform_v1beta1_result.dart';
import 'get_specialist_pool_args.dart';
import 'get_specialist_pool_result.dart';
import 'get_study_aiplatform_v1beta1_args.dart';
import 'get_study_aiplatform_v1beta1_result.dart';
import 'get_study_args.dart';
import 'get_study_result.dart';
import 'get_tensorboard_aiplatform_v1beta1_args.dart';
import 'get_tensorboard_aiplatform_v1beta1_result.dart';
import 'get_tensorboard_args.dart';
import 'get_tensorboard_result.dart';
import 'get_time_series_aiplatform_v1beta1_args.dart';
import 'get_time_series_aiplatform_v1beta1_result.dart';
import 'get_time_series_args.dart';
import 'get_time_series_result.dart';
import 'get_training_pipeline_aiplatform_v1beta1_args.dart';
import 'get_training_pipeline_aiplatform_v1beta1_result.dart';
import 'get_training_pipeline_args.dart';
import 'get_training_pipeline_result.dart';
import 'get_trial_aiplatform_v1beta1_args.dart';
import 'get_trial_aiplatform_v1beta1_result.dart';
import 'get_trial_args.dart';
import 'get_trial_result.dart';

/// Retrieves a specific Artifact.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArtifactResult> getArtifact(
  GetArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactResult.fromMap(result);
}

/// Gets a BatchPredictionJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_batch_prediction_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBatchPredictionJobResult> getBatchPredictionJob(
  GetBatchPredictionJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getBatchPredictionJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchPredictionJobResult.fromMap(result);
}

/// Retrieves a specific Context.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_context_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContextResult> getContext(
  GetContextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextResult.fromMap(result);
}

/// Gets a CustomJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_custom_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomJobResult> getCustomJob(
  GetCustomJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getCustomJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomJobResult.fromMap(result);
}

/// Gets a DataLabelingJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_data_labeling_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataLabelingJobResult> getDataLabelingJob(
  GetDataLabelingJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDataLabelingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLabelingJobResult.fromMap(result);
}

/// Gets a Dataset.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}

/// Gets a Dataset version.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_dataset_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetVersionResult> getDatasetVersion(
  GetDatasetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDatasetVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetVersionResult.fromMap(result);
}

/// Get a DeploymentResourcePool.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_deployment_resource_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResourcePoolResult> getDeploymentResourcePool(
  GetDeploymentResourcePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDeploymentResourcePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResourcePoolResult.fromMap(result);
}

/// Gets an Endpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

/// Gets details of a single EntityType.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_entity_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityTypeResult> getEntityType(
  GetEntityTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult.fromMap(result);
}

/// Retrieves a specific Execution.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_execution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionResult> getExecution(
  GetExecutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult.fromMap(result);
}

/// Gets a TensorboardExperiment.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_experiment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperimentResult> getExperiment(
  GetExperimentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentResult.fromMap(result);
}

/// Gets details of a single FeatureGroup.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGroupResult> getFeatureGroup(
  GetFeatureGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupResult.fromMap(result);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_group_feature_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGroupFeatureResult> getFeatureGroupFeature(
  GetFeatureGroupFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureGroupFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupFeatureResult.fromMap(result);
}

/// Gets details of a single FeatureOnlineStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_online_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureOnlineStoreResult> getFeatureOnlineStore(
  GetFeatureOnlineStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureOnlineStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureOnlineStoreResult.fromMap(result);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_store_feature_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureStoreFeatureResult> getFeatureStoreFeature(
  GetFeatureStoreFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureStoreFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureStoreFeatureResult.fromMap(result);
}

/// Gets details of a single FeatureView.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureViewResult> getFeatureView(
  GetFeatureViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureViewResult.fromMap(result);
}

/// Gets details of a single Featurestore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_featurestore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreResult> getFeaturestore(
  GetFeaturestoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_featurestore_entity_type_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreEntityTypeIamPolicyResult> getFeaturestoreEntityTypeIamPolicy(
  GetFeaturestoreEntityTypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestoreEntityTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreEntityTypeIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_featurestore_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreIamPolicyResult> getFeaturestoreIamPolicy(
  GetFeaturestoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreIamPolicyResult.fromMap(result);
}

/// Gets a HyperparameterTuningJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_hyperparameter_tuning_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHyperparameterTuningJobResult> getHyperparameterTuningJob(
  GetHyperparameterTuningJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getHyperparameterTuningJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHyperparameterTuningJobResult.fromMap(result);
}

/// Gets an Index.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_index_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexResult> getIndex(
  GetIndexArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexResult.fromMap(result);
}

/// Gets an IndexEndpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_index_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexEndpointResult> getIndexEndpoint(
  GetIndexEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getIndexEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexEndpointResult.fromMap(result);
}

/// Retrieves a specific MetadataSchema.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_metadata_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataSchemaResult> getMetadataSchema(
  GetMetadataSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getMetadataSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataSchemaResult.fromMap(result);
}

/// Retrieves a specific MetadataStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_metadata_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataStoreResult> getMetadataStore(
  GetMetadataStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getMetadataStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataStoreResult.fromMap(result);
}

/// Gets a ModelDeploymentMonitoringJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_model_deployment_monitoring_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelDeploymentMonitoringJobResult> getModelDeploymentMonitoringJob(
  GetModelDeploymentMonitoringJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getModelDeploymentMonitoringJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelDeploymentMonitoringJobResult.fromMap(result);
}

/// Gets a NasJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_nas_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNasJobResult> getNasJob(
  GetNasJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNasJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNasJobResult.fromMap(result);
}

/// Gets a NotebookRuntimeTemplate.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_notebook_runtime_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotebookRuntimeTemplateResult> getNotebookRuntimeTemplate(
  GetNotebookRuntimeTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNotebookRuntimeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_notebook_runtime_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotebookRuntimeTemplateIamPolicyResult> getNotebookRuntimeTemplateIamPolicy(
  GetNotebookRuntimeTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNotebookRuntimeTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateIamPolicyResult.fromMap(result);
}

/// Gets a PipelineJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_pipeline_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineJobResult> getPipelineJob(
  GetPipelineJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getPipelineJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineJobResult.fromMap(result);
}

/// Gets a TensorboardRun.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRunResult> getRun(
  GetRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunResult.fromMap(result);
}

/// Gets a Schedule.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleResult> getSchedule(
  GetScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult.fromMap(result);
}

/// Gets a SpecialistPool.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_specialist_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpecialistPoolResult> getSpecialistPool(
  GetSpecialistPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getSpecialistPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpecialistPoolResult.fromMap(result);
}

/// Gets a Study by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_study_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStudyResult> getStudy(
  GetStudyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getStudy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudyResult.fromMap(result);
}

/// Gets a Tensorboard.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_tensorboard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTensorboardResult> getTensorboard(
  GetTensorboardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTensorboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTensorboardResult.fromMap(result);
}

/// Gets a TensorboardTimeSeries.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_time_series_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTimeSeriesResult> getTimeSeries(
  GetTimeSeriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTimeSeries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTimeSeriesResult.fromMap(result);
}

/// Gets a TrainingPipeline.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_training_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrainingPipelineResult> getTrainingPipeline(
  GetTrainingPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTrainingPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrainingPipelineResult.fromMap(result);
}

/// Gets a Trial.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_trial_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrialResult> getTrial(
  GetTrialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTrial',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrialResult.fromMap(result);
}

/// Retrieves a specific Artifact.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_artifact_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArtifactAiplatformV1beta1Result> getArtifactAiplatformV1beta1(
  GetArtifactAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactAiplatformV1beta1Result.fromMap(result);
}

/// Gets a BatchPredictionJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_batch_prediction_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBatchPredictionJobAiplatformV1beta1Result> getBatchPredictionJobAiplatformV1beta1(
  GetBatchPredictionJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getBatchPredictionJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchPredictionJobAiplatformV1beta1Result.fromMap(result);
}

/// Retrieves a specific Context.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_context_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContextAiplatformV1beta1Result> getContextAiplatformV1beta1(
  GetContextAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextAiplatformV1beta1Result.fromMap(result);
}

/// Gets a CustomJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_custom_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomJobAiplatformV1beta1Result> getCustomJobAiplatformV1beta1(
  GetCustomJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getCustomJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomJobAiplatformV1beta1Result.fromMap(result);
}

/// Gets a DataLabelingJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_data_labeling_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataLabelingJobAiplatformV1beta1Result> getDataLabelingJobAiplatformV1beta1(
  GetDataLabelingJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataLabelingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLabelingJobAiplatformV1beta1Result.fromMap(result);
}

/// Gets a Dataset.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_dataset_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetAiplatformV1beta1Result> getDatasetAiplatformV1beta1(
  GetDatasetAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetAiplatformV1beta1Result.fromMap(result);
}

/// Gets a Dataset version.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_dataset_version_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetVersionAiplatformV1beta1Result> getDatasetVersionAiplatformV1beta1(
  GetDatasetVersionAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDatasetVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetVersionAiplatformV1beta1Result.fromMap(result);
}

/// Get a DeploymentResourcePool.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_deployment_resource_pool_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResourcePoolAiplatformV1beta1Result> getDeploymentResourcePoolAiplatformV1beta1(
  GetDeploymentResourcePoolAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDeploymentResourcePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResourcePoolAiplatformV1beta1Result.fromMap(result);
}

/// Gets an Endpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_endpoint_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointAiplatformV1beta1Result> getEndpointAiplatformV1beta1(
  GetEndpointAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAiplatformV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_endpoint_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointIamPolicyResult> getEndpointIamPolicy(
  GetEndpointIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEndpointIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointIamPolicyResult.fromMap(result);
}

/// Gets details of a single EntityType.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_entity_type_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityTypeAiplatformV1beta1Result> getEntityTypeAiplatformV1beta1(
  GetEntityTypeAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeAiplatformV1beta1Result.fromMap(result);
}

/// Retrieves a specific Execution.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_execution_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionAiplatformV1beta1Result> getExecutionAiplatformV1beta1(
  GetExecutionAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionAiplatformV1beta1Result.fromMap(result);
}

/// Gets a TensorboardExperiment.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_experiment_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperimentAiplatformV1beta1Result> getExperimentAiplatformV1beta1(
  GetExperimentAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentAiplatformV1beta1Result.fromMap(result);
}

/// Gets details of a single FeatureGroup.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_group_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGroupAiplatformV1beta1Result> getFeatureGroupAiplatformV1beta1(
  GetFeatureGroupAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupAiplatformV1beta1Result.fromMap(result);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_group_feature_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGroupFeatureAiplatformV1beta1Result> getFeatureGroupFeatureAiplatformV1beta1(
  GetFeatureGroupFeatureAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroupFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupFeatureAiplatformV1beta1Result.fromMap(result);
}

/// Gets details of a single FeatureOnlineStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_online_store_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureOnlineStoreAiplatformV1beta1Result> getFeatureOnlineStoreAiplatformV1beta1(
  GetFeatureOnlineStoreAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureOnlineStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureOnlineStoreAiplatformV1beta1Result.fromMap(result);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_store_feature_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureStoreFeatureAiplatformV1beta1Result> getFeatureStoreFeatureAiplatformV1beta1(
  GetFeatureStoreFeatureAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureStoreFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureStoreFeatureAiplatformV1beta1Result.fromMap(result);
}

/// Gets details of a single FeatureView.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_view_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureViewAiplatformV1beta1Result> getFeatureViewAiplatformV1beta1(
  GetFeatureViewAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureViewAiplatformV1beta1Result.fromMap(result);
}

/// Gets details of a single Featurestore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_featurestore_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreAiplatformV1beta1Result> getFeaturestoreAiplatformV1beta1(
  GetFeaturestoreAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreAiplatformV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Result> getFeaturestoreEntityTypeIamPolicyAiplatformV1beta1(
  GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestoreEntityTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_featurestore_iam_policy_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreIamPolicyAiplatformV1beta1Result> getFeaturestoreIamPolicyAiplatformV1beta1(
  GetFeaturestoreIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreIamPolicyAiplatformV1beta1Result.fromMap(result);
}

/// Gets a HyperparameterTuningJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_hyperparameter_tuning_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHyperparameterTuningJobAiplatformV1beta1Result> getHyperparameterTuningJobAiplatformV1beta1(
  GetHyperparameterTuningJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getHyperparameterTuningJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHyperparameterTuningJobAiplatformV1beta1Result.fromMap(result);
}

/// Gets an Index.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_index_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexAiplatformV1beta1Result> getIndexAiplatformV1beta1(
  GetIndexAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexAiplatformV1beta1Result.fromMap(result);
}

/// Gets an IndexEndpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_index_endpoint_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexEndpointAiplatformV1beta1Result> getIndexEndpointAiplatformV1beta1(
  GetIndexEndpointAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndexEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexEndpointAiplatformV1beta1Result.fromMap(result);
}

/// Retrieves a specific MetadataSchema.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_metadata_schema_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataSchemaAiplatformV1beta1Result> getMetadataSchemaAiplatformV1beta1(
  GetMetadataSchemaAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataSchemaAiplatformV1beta1Result.fromMap(result);
}

/// Retrieves a specific MetadataStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_metadata_store_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataStoreAiplatformV1beta1Result> getMetadataStoreAiplatformV1beta1(
  GetMetadataStoreAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataStoreAiplatformV1beta1Result.fromMap(result);
}

/// Gets a ModelDeploymentMonitoringJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_model_deployment_monitoring_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelDeploymentMonitoringJobAiplatformV1beta1Result> getModelDeploymentMonitoringJobAiplatformV1beta1(
  GetModelDeploymentMonitoringJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getModelDeploymentMonitoringJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelDeploymentMonitoringJobAiplatformV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_model_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelIamPolicyResult> getModelIamPolicy(
  GetModelIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getModelIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelIamPolicyResult.fromMap(result);
}

/// Gets a NasJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_nas_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNasJobAiplatformV1beta1Result> getNasJobAiplatformV1beta1(
  GetNasJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNasJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNasJobAiplatformV1beta1Result.fromMap(result);
}

/// Gets a NotebookRuntimeTemplate.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_notebook_runtime_template_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotebookRuntimeTemplateAiplatformV1beta1Result> getNotebookRuntimeTemplateAiplatformV1beta1(
  GetNotebookRuntimeTemplateAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNotebookRuntimeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateAiplatformV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Result> getNotebookRuntimeTemplateIamPolicyAiplatformV1beta1(
  GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNotebookRuntimeTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Result.fromMap(result);
}

/// Gets a PersistentResource.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_persistent_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPersistentResourceResult> getPersistentResource(
  GetPersistentResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getPersistentResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPersistentResourceResult.fromMap(result);
}

/// Gets a PipelineJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_pipeline_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineJobAiplatformV1beta1Result> getPipelineJobAiplatformV1beta1(
  GetPipelineJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getPipelineJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineJobAiplatformV1beta1Result.fromMap(result);
}

/// Gets a TensorboardRun.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_run_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRunAiplatformV1beta1Result> getRunAiplatformV1beta1(
  GetRunAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunAiplatformV1beta1Result.fromMap(result);
}

/// Gets a Schedule.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_schedule_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleAiplatformV1beta1Result> getScheduleAiplatformV1beta1(
  GetScheduleAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleAiplatformV1beta1Result.fromMap(result);
}

/// Gets a SpecialistPool.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_specialist_pool_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpecialistPoolAiplatformV1beta1Result> getSpecialistPoolAiplatformV1beta1(
  GetSpecialistPoolAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSpecialistPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpecialistPoolAiplatformV1beta1Result.fromMap(result);
}

/// Gets a Study by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_study_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStudyAiplatformV1beta1Result> getStudyAiplatformV1beta1(
  GetStudyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getStudy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudyAiplatformV1beta1Result.fromMap(result);
}

/// Gets a Tensorboard.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_tensorboard_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTensorboardAiplatformV1beta1Result> getTensorboardAiplatformV1beta1(
  GetTensorboardAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTensorboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTensorboardAiplatformV1beta1Result.fromMap(result);
}

/// Gets a TensorboardTimeSeries.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_time_series_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTimeSeriesAiplatformV1beta1Result> getTimeSeriesAiplatformV1beta1(
  GetTimeSeriesAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTimeSeries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTimeSeriesAiplatformV1beta1Result.fromMap(result);
}

/// Gets a TrainingPipeline.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_training_pipeline_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrainingPipelineAiplatformV1beta1Result> getTrainingPipelineAiplatformV1beta1(
  GetTrainingPipelineAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrainingPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrainingPipelineAiplatformV1beta1Result.fromMap(result);
}

/// Gets a Trial.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_trial_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrialAiplatformV1beta1Result> getTrialAiplatformV1beta1(
  GetTrialAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrial',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrialAiplatformV1beta1Result.fromMap(result);
}
