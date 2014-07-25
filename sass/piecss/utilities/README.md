#Utilities

## Table of Content

 1. Typography
 2. Rhythm
  1. Vertical Rhythm
  2. Horizontal Rhythm
 3. Layout


----------

## 2. Rhythm

### 2.1 Vertical Rhythm

Properties that implement vertical rhythm:

* margin (-top, -bottom)
* padding (-top, -bottom)
* height
* top
* bottom
* font-size
* line-height



#### Usage
Vertical units can be calculated with vrhythm-units();

```scss
// units, context
@include line-height(1, 16px);
```

```scss
// units, property, context
@include vrhythm(1, line-height, 16px);
```

```scss
// units, context
line-height: vrhythm(1, 16px);
```

Output (assuming context font-size is 16px and rhythm-measurement is 24px):

```scss
// unit: px
line-height: 24px;
```

```scss
// unit: em
line-height: 1em;
```

```scss
// unit: rem
line-height: 1.5rem;
```

```scss
// unit: %
line-height: 150%;
```

### 2.2 Horizontal Rhythm

Vertical rhythm is used for horizontal padding. It's based on the value for column gutters which is configured in the layout settings file.

Properties that implement horizontal rhythm:

* margin (-right, -left)
* padding (-right, -left)
* width
* right
* left

#### Usage
Horizontal units can be calculated with hrhythm-units();

```scss
// units, context
@include margin-bottom(1, 16px);
```

```scss
// units, property, context
@include hrhythm(1, margin-bottom, 16px);
```

```scss
// units, context
margin-bottom: hrhythm(1, 16px);
```

Which outputs:

```scss
// unit: rem
margin-bottom: 1.5rem;
```
