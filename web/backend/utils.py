"""
Small helper utilities used by backend + UI. These help separate logic and make testing easier.
"""
from typing import Tuple


def format_subject_body(subject: str, body: str, sep: str = " ") -> str:
    """Return a single text combining a subject and body with an optional separator.

    Strips input pieces and returns the combination. Used to prepare text for tokenization.
    """
    subject = subject or ""
    body = body or ""
    if subject and body:
        return f"{subject.strip()}{sep}{body.strip()}".strip()
    return (subject or body).strip()
