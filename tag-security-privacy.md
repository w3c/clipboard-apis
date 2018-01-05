# TAG Security & Privacy Review Document

Answering questions from [the questionaire doc here](https://w3ctag.github.io/security-questionnaire/).

## Questions to Consider

### 3.1. Does this specification deal with personally-identifiable information?
Yes. It provides access to the clipboard (protected behind a Permission).

### 3.2. Does this specification deal with high-value data?
Possibly. The clipboard can contain any data (although the API is currently limited to only accessing text data).
But this could be passwords or other sensitive information.

### 3.3 Does this specification introduce new state for an origin that persists across browsing sessions?
No.

### 3.4. Does this specification expose persistent, cross-origin state to the web?
No.

### 3.5. Does this specification expose any other data to an origin that it doesn’t currently have access to?
No.

### 3.6. Does this specification enable new script execution/loading mechanisms?
No.

### 3.7. Does this specification allow an origin access to a user’s location?
No.

### 3.8. Does this specification allow an origin access to sensors on a user’s device?
No.

### 3.9. Does this specification allow an origin access to aspects of a user’s local computing environment?
Yes. It provides access to the system clipboard.

### 3.10. Does this specification allow an origin access to other devices?
No.

### 3.11. Does this specification allow an origin some measure of control over a user agent’s native UI?
No.

### 3.12. Does this specification expose temporary identifiers to the web?
No.

### 3.13. Does this specification distinguish between behavior in first-party and third-party contexts?
No.

### 3.14. How should this specification work in the context of a user agent’s "incognito" mode?
The same as outside of incognito.

### 3.15. Does this specification persist data to a user’s local device?
No.

### 3.16. Does this specification have a "Security Considerations" and "Privacy Considerations" section?
Yes.

### 3.17. Does this specification allow downgrading default security characteristics?
No.

## Mitigation Strategies 

### 4.1 Secure Contexts
This API is only available in Secure contexts

### 4.2 Explicit user mediation
A Clipboard permission is defined so that the user agents can give the user control over which
sites can use this feature.
