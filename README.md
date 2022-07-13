<p><picture>
  <source srcset="https://eritbh.me/assets/umbreon-2x.png 2x,https://eritbh.me/assets/umbreon.png" media="(prefers-reduced-motion: reduce)">
  <img align="left" width="60" alt="Pixel art of a shiny Umbreon doing a run" src="https://eritbh.me/assets/umbreon.gif" srcset="https://eritbh.me/assets/umbreon-2x.gif 2x">
</picture></p>

[![pronouns: she/her](https://img.shields.io/badge/-she/her-b447ff)](https://pronoun.is/she)
[![site: eritbh.me](https://img.shields.io/badge/-website-3cc76d?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsIAAA7CARUoSoAAAAIZSURBVFhH1de9axRBHMbxy5mAiBhEUIhY2WmCBhQUSSUKFsFKsLFNowT/gNTaitiIhY0IKljYWSgE7ETESgkWWoSQaGF8IWcSc36fmZ3jnIy385tTxAc+mZl9m7nZvb1Jo91ux85iEb/LPM4gda7ZgP5U2YVX2Ota9VnGMbxxrcI0q/I0PiC3c2UYr3HBtUrDDBxFvzmHTdObQ7fgG+PY5odTnDVsx6prGaJb0G/nyhBu+6otmgGNfhFXsRMTOIUBWKLrbMWGa+WGATTD/egyhOewZhzxtXrSLUiNWJ/meFVacr4qsxO+hqms44GvZudkVWan1wCUG1WZG73M6qJjJn21fgAHqjI3X6uyV17iEQ65VurB6LIAS+4gdZ3gLkJW0NTGW9iH+OBpWHMC8XWC+4hzTTtCWniCm3inDcZ8h/txS7iCZLTzT+Ui4o6DS0ilpZ2Pfb2vaMbiTmP30J0NjGqH3oRL2lIYPahbEHcY0+0Jb9cfOIzOt2AQb2HNHHI6D/RhZzAStsUHXMY66rKKKcTnm6U2ajYmMYsvUGdr+ISHOILUeUW614T/JHWv4r+e/3YAWv8t4aBr9ZGSZ0BLtQXsgRYsO9BCUawzoM5fQJ0rWoy+h3X92Il1AHMY99VOduO6r9pjvQXzGPHVX7KCouW9dQb8KmZz9K9dUawD+IhpX3XR9I3imWsVpPRN+BT7MYbP2lCWRuMnK/Z5dIb/Cw8AAAAASUVORK5CYII=)](https://eritbh.me)
[![mastodon: tech.lgbt/@eritbh](https://img.shields.io/badge/-mastodon-3088D4?logo=mastodon&logoColor=white)](https://tech.lgbt/@eritbh)
[![twitter: eritbh](https://img.shields.io/badge/-twitter-1DA1F2?logo=twitter&logoColor=white)](https://twitter.com/eritbh)
[![npm: eritbh](https://img.shields.io/badge/-npm-CB3837?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAqCAMAAADyHTlpAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAGUExURf///wAAAFXC034AAAACdFJOU/8A5bcwSgAAAAlwSFlzAAAOwwAADsMBx2+oZAAAACxJREFUSEtjYCQa0E4pAxFgVCmdlQIFIQDKH1U6qnRU6ahSGislEtBCKSMjABeUAshtayE4AAAAAElFTkSuQmCC)](https://www.npmjs.com/~eritbh)
[![donate on github sponsors](https://img.shields.io/badge/-sponsor-EA4AAA?logo=github-sponsors&logoColor=white)](https://github.com/sponsors/eritbh)
[![donate on ko-fi](https://img.shields.io/badge/-donate-FF5E5B?logo=ko-fi&logoColor=white)](https://ko-fi.com/eritbh)
![](1x24-transparent.png)

<!--

that last bit is a 1x24px transparent image for perfectly centering the badges
relative to the umbreon image. let's break it down:

the umbreon image is 60px tall, and badges are 20px tall. so the vertical
margin on each side of the badges should be (60px - 20px) / 2, or 20px.also,
the umbreon image is in its own paragraph, and <p> elements have 16px of bottom
margin on github - this pushes the badges down by 16px already. so we need to
move the paragraph with the badges down another 4px to get our target of 20px
vertical margin. the way we do that is by inserting an image taller than a
badge by 4 pixels. multiple inline images in a single paragraph will align
themselves to the baseline by default; that is, if you have multiple images of
different heights in the same paragraph, the images will all align their bottom
edges. this is useful because the paragraph will make itself tall enough to
accomodate the largest image on the line, so if we insert an element into the
paragraph that is 4px taller than the badges, then we effectively move all the
badges down by 4 pixels. the actual height of the image, then, is 20px + 4px.

-->
