# docker-fhir-ig-publisher
Docker Image for FHIR IG Publisher

```
docker run -v <path-to-ig>:/data -e JAVA_TOOL_OPTIONS="-Xmx1512m" --memory 2g -it cjfourstrike:fhir-ig-publisher -ig <path-to-ig.ini>
```