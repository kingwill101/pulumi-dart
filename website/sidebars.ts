import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  tutorialSidebar: [
    'intro',
    {
      type: 'category',
      label: 'Get Started',
      items: [
        'get-started/prerequisites',
        'get-started/install',
        'get-started/create-project',
        'get-started/deploy',
        'get-started/update-and-destroy',
        'get-started/troubleshooting',
      ],
    },
    {
      type: 'category',
      label: 'Provider SDKs',
      items: [
        'providers/use-published-providers',
        'providers/generate-provider-sdk',
        'providers/local-smoke-tests',
        'providers/dependency-registry',
      ],
    },
    {
      type: 'category',
      label: 'Reference',
      items: [
        'reference/project-templates',
        'reference/language-host-releases',
        'reference/community-support',
        'reference/schema-drift-monitoring',
      ],
    },
  ],
};

export default sidebars;
