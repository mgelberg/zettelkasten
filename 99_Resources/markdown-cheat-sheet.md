# Markdown Cheat Sheet

Thanks for visiting [The Markdown Guide](https://www.markdownguide.org)!

This Markdown cheat sheet provides a quick overview of all the Markdown syntax elements. It can’t cover every edge case, so if you need more information about any of these elements, refer to the reference guides for [basic syntax](https://www.markdownguide.org/basic-syntax/) and [extended syntax](https://www.markdownguide.org/extended-syntax/).

## Basic Syntax

These are the elements outlined in John Gruber’s original design document. All Markdown applications support these elements.

### Heading

# H1
## H2
### H3

### Bold

**bold text**

### Italic

*italicized text*

### Blockquote

> blockquote

### Ordered List

1. First item
2. Second item
3. Third item

### Unordered List

- First item
- Second item
- Third item

### Code

`code`

### Horizontal Rule

---

### Link

[Markdown Guide](https://www.markdownguide.org)

### Image

![alt text](https://www.markdownguide.org/assets/images/tux.png)

## Extended Syntax

These elements extend the basic syntax by adding additional features. Not all Markdown applications support these elements.

### Table

| Syntax    | Description |
| --------- | ----------- |
| Header    | Title       |
| Paragraph | Text        |

### Fenced Code Block

```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

### Footnote

Here's a sentence with a footnote. [^1]

[^1]: This is the footnote.

### Heading ID

### My Great Heading {#custom-id}

### Definition List

term
: definition

### Strikethrough

~~The world is flat.~~

### Task List

- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media

### Emoji

That is so funny! :joy:

(See also [Copying and Pasting Emoji](https://www.markdownguide.org/extended-syntax/#copying-and-pasting-emoji))

### Highlight

I need to highlight these ==very important words==.

### Subscript

H~2~O

### Superscript

X^2^

### Inline code vs fenced code

- Inline: ``use backticks for `code` inside a sentence``
- Fenced (supports language hints for syntax highlighting):
```js
function greet(name) {
  console.log(`Hello, ${name}`);
}
```

### Autolinks and bare URLs

<https://example.com>

### Escaping special characters

Use a backslash before special characters: `\*escaped asterisk\*`

### Inline HTML (flavor-dependent)

<span style="color:red">Red text</span>

### Obsidian basics

- Wikilink: `[[Note Name]]`
- Heading/block link: `[[Note Name#Section]]` or `[[Note Name#^block-id]]`
- Embed note: `![[Note Name]]`
- Callout/admonition:
  > [!note] Title
  > Body text

### Frontmatter / Properties (YAML)

Add a YAML block at the top between `---` lines. Many tools (including Obsidian) read this as note properties.

```yaml
---
title: Daily Note
type: daily
status: active
date: 2024-12-03
tags: [daily, journal]
---
```

In Obsidian templates you can use placeholders like `{{date}}` in the values; outside Obsidian it’s just normal YAML frontmatter.
