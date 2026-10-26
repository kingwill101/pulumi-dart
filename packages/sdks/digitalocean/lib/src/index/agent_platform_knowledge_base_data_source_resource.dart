import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_knowledge_base_data_source_args.dart';
import 'agent_platform_knowledge_base_data_source_spaces_data_source.dart';
import 'agent_platform_knowledge_base_data_source_state.dart';
import 'agent_platform_knowledge_base_data_source_web_crawler_data_source.dart';

class AgentPlatformKnowledgeBaseDataSourceResource extends pulumi.CustomResource {
  /// UUID of the Knowledge Base
  late final pulumi.Output<String> knowledgeBaseUuid;
  late final pulumi.Output<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource?> spacesDataSource;
  late final pulumi.Output<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource?> webCrawlerDataSource;

  /// Creates a new [AgentPlatformKnowledgeBaseDataSourceResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPlatformKnowledgeBaseDataSourceResource]. {@macro pulumi_index_agent_platform_knowledge_base_data_source_agent_platform_knowledge_base_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPlatformKnowledgeBaseDataSourceResource(
    String name, {
    AgentPlatformKnowledgeBaseDataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformKnowledgeBaseDataSource:AgentPlatformKnowledgeBaseDataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.84.1').merge(options),
        ) {
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
    spacesDataSource = registerOutput<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource?>('spacesDataSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPlatformKnowledgeBaseDataSourceSpacesDataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webCrawlerDataSource = registerOutput<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource?>('webCrawlerDataSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentPlatformKnowledgeBaseDataSourceResource] resource's state with the given [name] and [id].
  static AgentPlatformKnowledgeBaseDataSourceResource get(
    String name,
    pulumi.Input<String> id, {
    AgentPlatformKnowledgeBaseDataSourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentPlatformKnowledgeBaseDataSourceResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentPlatformKnowledgeBaseDataSourceResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformKnowledgeBaseDataSource:AgentPlatformKnowledgeBaseDataSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
    spacesDataSource = registerOutput<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource?>('spacesDataSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPlatformKnowledgeBaseDataSourceSpacesDataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webCrawlerDataSource = registerOutput<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource?>('webCrawlerDataSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentPlatformKnowledgeBaseDataSourceResource] resource.
  AgentPlatformKnowledgeBaseDataSourceResource.reference(String urn)
    : super(
        'digitalocean:index/agentPlatformKnowledgeBaseDataSource:AgentPlatformKnowledgeBaseDataSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
    spacesDataSource = registerOutput<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource?>('spacesDataSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPlatformKnowledgeBaseDataSourceSpacesDataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webCrawlerDataSource = registerOutput<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource?>('webCrawlerDataSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
