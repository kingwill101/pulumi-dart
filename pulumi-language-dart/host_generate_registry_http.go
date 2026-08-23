package main

import (
	"io"
	"net/http"
	"time"
)

func fetchDependencyRegistryURL(registryURL string) ([]byte, bool) {
	client := &http.Client{Timeout: 5 * time.Second}
	response, err := client.Get(registryURL)
	if err != nil {
		return nil, false
	}
	defer response.Body.Close()

	if response.StatusCode < http.StatusOK || response.StatusCode >= http.StatusMultipleChoices {
		return nil, false
	}

	bytes, err := io.ReadAll(response.Body)
	if err != nil {
		return nil, false
	}
	if len(bytes) == 0 {
		return nil, false
	}
	return bytes, true
}

// shouldUpdateExistingPubspec returns true when existing pubspec files may be
// augmented with missing required generated dependencies.
