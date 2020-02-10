{extends "designs/site.tpl"}

{block "title"}SimpleMDE Examples &mdash; {$dwoo.parent}{/block}

{block "css"}
    {$dwoo.parent}
    {cssmin "lib/simplemde/simplemde.min.css"}
    <style>
    .description-ct {
        border: 3px dashed red;
    }

    .description-ct textarea {
        border: 2px dotted lime;
    }
    </style>
{/block}

{block "js-bottom"}
    {$dwoo.parent}
    {jsmin "lib/simplemde/simplemde.min.js"}
    <script>
    var simplemde = new SimpleMDE({
        element: document.querySelector('textarea[name=description-1]')
    });
    </script>
{/block}

{block "content"}
    {* SimpleMDE will fill whatever container the textarea it replaces is within, so wrap the textarea and size the container *}
    <div class="description-ct" style="width: 600px; height: 400px">
        <textarea name="description-1" style="width: 100%; height: 100%"></textarea>
    </div>
{/block}
