---
layout: default
title: "Centro de práctica de Zen"
---

<div class="sm:px-8 mt-9">
  <div class="mx-auto w-full max-w-7xl lg:px-8">
    <div class="relative px-4 py-60 sm:px-8 sm:py-96 lg:px-12" style="background-image: url({{ '/assets/images/bg-inicio.jpg' | relative_url }});">
      <div class="mx-auto max-w-2xl lg:max-w-5xl">
        <div class="mx-auto md:text-center">
          <h1 class="text-4xl font-bold tracking-tight text-zinc-800 sm:text-6xl">
              {{ site.title }}
          </h1>
          <p class="text-lg mt-6 text-base text-zinc-600 sm:text-xl">
            {{ page.title }}
          </p>
        </div>
      </div>
    </div>
    <div id="zendo" class="relative px-4 py-20 sm:py-36 sm:px-8 lg:px-12 bg-zinc-200">
      <div class="flex">
        <div class="flex-grow">
        </div>
        <div class="w-full sm:w-1/2">
          {% include index/zendo.html %}
        </div>
      </div>
    </div>
    <div id="ryunan" class="relative px-8 py-20 md:py-36 lg:px-12 bg-emerald-800">
      <div class="flex flex-col md:flex-row">
        <div class="w-full flex justify-center md:w-1/2">
          <img src="{{ '/assets/images/ryunan-bustamante-zenji.png' | relative_url }}" class="rounded-full h-48 w-48 md:h-72 md:w-72" alt="Circle Image">
        </div>
        <div class="w-full md:w-1/2">
          {% include index/ryunan.html %}
        </div>
      </div>
    </div>
    <div id="location" class="relative px-4 py-12 sm:py-16 sm:px-8 lg:px-12 bg-zinc-200">
      <div class="flex">
        <div class="w-full">
          {% include index/location.html %}
        </div>
      </div>
    </div>
  </div>
</div>
