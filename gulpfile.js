var gulp = require('gulp'),
    scssLint = require('sass-lint'),
    sass = require('gulp-sass'),
    sassdoc = require('sassdoc');

gulp.task('watch', function() {
    gulp.watch(['tests/*.scss', 'sass/**/*.scss', 'templates/project/*.scss'], ['_build']);
});

gulp.task('doc', function() {
    return gulp.src('sass/**/*.scss')
        .pipe(sassdoc());
});

gulp.task('_build', function() {
    // Build example project.
    gulp.src('templates/project/screen.scss')
        .pipe(sass())
        .pipe(gulp.dest('templates/project/assets/css/'));
});

gulp.task('lint', function() {
    // Lint the piecss files.
    var results = scssLint.lintFiles('sass/piecss/**/*.scss', {}, './.scss-lint.yml');
    scssLint.outputResults(results, {}, './.scss-lint.yml');

    // Lint the piecss tests.
    results = scssLint.lintFiles('tests/*.scss', {}, './.scss-lint.yml');
    scssLint.outputResults(results, {}, './.scss-lint.yml');
});

gulp.task('test', function() {
    gulp.src('tests/*.scss')
        .pipe(sass());
});

gulp.task('default', function() {
    gulp.watch(['tests/*.scss', 'sass/**/*.scss', 'templates/project/*.scss'], ['test', 'lint', '_build']);
});
